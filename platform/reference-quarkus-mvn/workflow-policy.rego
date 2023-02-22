package workflowResult

default unitTestPass = false
default codeCoveragePass = false
default complexityPass = false
default staticCodeAnalysisPass = false

unitTestPass {
    input.workflow.unit-test.attestations.tests > 0
    input.workflow.unit-test.attestations.skipped == 0
    input.workflow.unit-test.attestations.errors == 0
    input.workflow.unit-test.attestations.failures == 0
}

codeCoveragePass  {
    input.workflow.staticCodeAnalysis.attestations.codeCoverage >= 80
}

complexityPass {
    input.workflow.staticCodeAnalysis.attestations.cyclomaticComplexity < 40
}

staticCodeAnalysisPass {
    codeCoveragePass
    complexityPass
}

passAll {
	unitTestPass
	staticCodeAnalysisPass
}
