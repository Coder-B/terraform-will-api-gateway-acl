package test

import (
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// An example of how to test the simple Terraform module in examples/terraform-basic-example using Terratest.
func TestTerraformBasicExampleNew(t *testing.T) {
	terraformOptions := &terraform.Options {
		// The path to where your Terraform code is located
		TerraformDir: "../",
		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"name": "testSAG",
			"description" = "tf-testSagAclRule",
			"policy" = "accept",
			"ip_protocol" = "ALL",
			"direction" = "in",
  			"source_cidr" = "10.10.1.0/24",
  			"source_port_range" = "-1/-1",
  			"dest_cidr" = "192.168.1.0/24",
  			"dest_port_range" = "-1/-1",
  			"priority" = "1",
		},
		// Disable colors in Terraform commands so its easier to parse stdout/stderr
		NoColor: true,
	}
	  
	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)
	  
	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
	  
	// Validate your code works as expected
	validateServerIsWorking(t, terraformOptions)

	aclInstanceId := terraform.Output(t, terraformOptions, "acl_instance_id")
	aclRuleId := terraform.Output(t, terraformOptions, "acl_rule_id")

	
}