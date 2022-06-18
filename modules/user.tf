resource "aws_iam_user" "user" {
  name = var.user_name
}

resource "aws_iam_group" "group" {
  name = var.group_name
}

resource "aws_iam_user_group_membership" "membership" {
  user = aws_iam_user.user.name
  groups = [aws_iam_group.group.name]
}

data "aws_iam_policy" "policy_by_name" {
  name = var.policy_name
}

resource "aws_iam_group_policy_attachment" "policy" {
  group = aws_iam_group.group.name
  policy_arn = data.aws_iam_policy.policy_by_name.arn
}