resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.lb_target_group_attachment_depends_on)
    }
}

resource "aws_lb_target_group_attachment" "lb_target_group_attachment_terraform" {
    count            = var.lb_target_group_attachment_count
    depends_on       = [null_resource.depends_on]
    target_group_arn = var.lb_target_group_attachment_target_group_arn
    target_id        = var.lb_target_group_attachment_target_id
    port             = var.lb_target_group_attachment_port
}