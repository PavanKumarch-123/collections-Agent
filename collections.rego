package collections

import rego.v1

# Inputs come from configured SQL/current ledger and internal application identity.
# The UI cannot supply policy limits or authority.
default decision := {"decision": "deny", "reason": "Action is not authorized by collections policy"}

known if input.action in {"send_payment_link", "offer_payment_plan", "record_promise", "pause_for_dispute"}
eligible if {
    input.is_operator
    known
    input.fee_waiver_percent >= 0
    input.principal_discount_percent >= 0
    input.installments >= 1
}
dispute_safe if not input.active_dispute
dispute_safe if input.action == "pause_for_dispute"
routine if {
    input.fee_waiver_percent <= input.limits.fee_waiver_max_percent
    input.principal_discount_percent <= input.limits.principal_discount_max_percent
    input.installments <= input.limits.max_installments
}

decision := {"decision": "allow", "reason": "Within delegated collections authority"} if {
    eligible
    dispute_safe
    routine
}

# Display-only result: there is no approval queue or supervisor execution path.
# A supervisor role or approval flag in caller input cannot authorize a waiver.
decision := {"decision": "supervisor_required", "reason": "Supervisor approval required; no concession applied"} if {
    eligible
    dispute_safe
    not routine
}
