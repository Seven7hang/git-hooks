# My First GitHub Repository
Hooks allow running custom commands between phases of the build process by creating hooks. Hooks allow you to provide extra instructions to the autobuild and autotest processes
1). The following hooks are available:
	1. hooks/post_checkout
	2. hooks/pre_build
	3. hooks/post_build
	4. hooks/pre_test
	5. hooks/post_test
	6. hooks/pre_push (only used when executing a build rule or automated build )
	7. hooks/post_push (only used when executing a build rule or automated build )