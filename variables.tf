variable "lb_target_group_attachment_count" {
    type        = bool
    description = "lb target group attachment count."
}

variable "lb_target_group_attachment_depends_on" {
    type        = list(string)
    description = "lb target group attachment depends on."
}

variable "lb_target_group_attachment_target_group_arn" {
    type        = string
    description = "lb target group attachment target group arn."
}

variable "lb_target_group_attachment_target_id" {
    type        = string
    description = "lb target group attachment target id."
}

variable "lb_target_group_attachment_port" {
    type        = number
    description = "lb target group attachment port."
}