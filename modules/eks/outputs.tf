output "cluster_id"                { value = aws_eks_cluster.main.id }
output "cluster_arn"               { value = aws_eks_cluster.main.arn }
output "cluster_endpoint"          { value = aws_eks_cluster.main.endpoint }
output "cluster_version"           { value = aws_eks_cluster.main.version }
output "cluster_security_group_id" { value = aws_security_group.cluster.id }
output "cluster_iam_role_arn"      { value = aws_iam_role.cluster.arn }
output "node_security_group_id"    { value = aws_security_group.node.id }
output "node_iam_role_arn"         { value = aws_iam_role.node.arn }
output "system_node_group_id"      { value = aws_eks_node_group.system.id }
output "cluster_ca_certificate"    { value = aws_eks_cluster.main.certificate_authority[0].data; sensitive = true }
output "cluster_oidc_issuer_url"   { value = try(aws_eks_cluster.main.identity[0].oidc[0].issuer, null) }
output "oidc_provider_arn"         { value = try(aws_iam_openid_connect_provider.eks.arn, null) }
output "kms_key_arn"               { value = aws_kms_key.cluster.arn }
output "cloudwatch_log_group_name" { value = aws_cloudwatch_log_group.cluster.name }
