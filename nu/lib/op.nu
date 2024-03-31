# 1Password CLI brings 1Password to your terminal.
export extern main [
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --help(-h)                                              # Get help for op.
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op
]

#   ##     ##    ###    ##    ##    ###     ######   ######## ##     ## ######## ##    ## ########     ######   #######  ##     ## ##     ##    ###    ##    ## ########   ######
#   ###   ###   ## ##   ###   ##   ## ##   ##    ##  ##       ###   ### ##       ###   ##    ##       ##    ## ##     ## ###   ### ###   ###   ## ##   ###   ## ##     ## ##    ##
#   #### ####  ##   ##  ####  ##  ##   ##  ##        ##       #### #### ##       ####  ##    ##       ##       ##     ## #### #### #### ####  ##   ##  ####  ## ##     ## ##
#   ## ### ## ##     ## ## ## ## ##     ## ##   #### ######   ## ### ## ######   ## ## ##    ##       ##       ##     ## ## ### ## ## ### ## ##     ## ## ## ## ##     ##  ######
#   ##     ## ######### ##  #### ######### ##    ##  ##       ##     ## ##       ##  ####    ##       ##       ##     ## ##     ## ##     ## ######### ##  #### ##     ##       ##
#   ##     ## ##     ## ##   ### ##     ## ##    ##  ##       ##     ## ##       ##   ###    ##       ##    ## ##     ## ##     ## ##     ## ##     ## ##   ### ##     ## ##    ##
#   ##     ## ##     ## ##    ## ##     ##  ######   ######## ##     ## ######## ##    ##    ##        ######   #######  ##     ## ##     ## ##     ## ##    ## ########   ######

#                                                         dP
#                                                         88
# .d8888b. .d8888b. .d8888b. .d8888b. dP    dP 88d888b. d8888P
# 88'  `88 88'  `"" 88'  `"" 88'  `88 88    88 88'  `88   88
# 88.  .88 88.  ... 88.  ... 88.  .88 88.  .88 88    88   88
# `88888P8 `88888P' `88888P' `88888P' `88888P' dP    dP   dP



# Manage your locally configured 1Password accounts
export extern account [
        # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for account
]

# Add an account to sign in to for the first time
export extern "account add" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)  # help for add
    --address=string: string     # The sign-in address for your account.
    --email string               # The email address associated with your account.
    --raw                        # Only return the session token.
    --shorthand=string: string   # Set a custom account shorthand for your account.
    --signin                     # Immediately sign in to the added account.
]

# Get details about your account
export extern "account get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for get
]

# List users and accounts set up on this device
export extern "account list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for list
]

alias "account ls" = account list

# Remove a 1Password account from this device
export extern "account forget" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for forget
    --all                       # Forget all authenticated accounts.

    account?: string: string@"nu completion account"       # The account to forget.
]

#                                                         dP
#                                                         88
# .d8888b. .d8888b. 88d888b. 88d888b. .d8888b. .d8888b. d8888P
# 88'  `"" 88'  `88 88'  `88 88'  `88 88ooood8 88'  `""   88
# 88.  ... 88.  .88 88    88 88    88 88.  ... 88.  ...   88
# `88888P' `88888P' dP    dP dP    dP `88888P' `88888P'   dP



# Manage Connect server instances and tokens in your 1Password account
export extern connect [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for connect
]

#                                   _
#                                  | |
#    ___ ___  _ __  _ __   ___  ___| |_    __ _ _ __ ___  _   _ _ __
#   / __/ _ \| '_ \| '_ \ / _ \/ __| __|  / _` | '__/ _ \| | | | '_ \
#  | (_| (_) | | | | | | |  __/ (__| |_  | (_| | | | (_) | |_| | |_) |
#   \___\___/|_| |_|_| |_|\___|\___|\__|  \__, |_|  \___/ \__,_| .__/
#                                          __/ |               | |
#                                         |___/                |_|

# Manage group access to Secrets Automation
export extern "connect group" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for group
]

# Grant a group access to manage Secrets Automation
export extern "connect group grant" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                                                      # help for grant
    --all-servers     # Grant access to all current and future servers in the authenticated account.
    --group=group: string@"nu completion group"     # The group to receive access.
    --server=server: string@"nu completion server"   # The server to grant access to.
]

# Revoke a group's access to manage Secrets Automation
export extern "connect group revoke" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                                                      # help for revoke
    --all-servers                                                   # Revoke access to all current and future servers in the authenticated account.
    --group=group: string@"nu completion group"                                                                  # The group to revoke access from.
    --server=server: string@"nu completion server"                                                                # The server to revoke access to.
]


#                                   _
#                                  | |
#    ___ ___  _ __  _ __   ___  ___| |_   ___  ___ _ ____   _____ _ __
#   / __/ _ \| '_ \| '_ \ / _ \/ __| __| / __|/ _ \ '__\ \ / / _ \ '__|
#  | (_| (_) | | | | | | |  __/ (__| |_  \__ \  __/ |   \ V /  __/ |
#   \___\___/|_| |_|_| |_|\___|\___|\__| |___/\___|_|    \_/ \___|_|



# Manage Connect servers
export extern "connect server" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for server
]

# Set up a Connect server
export extern "connect server create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --force(-f)                             # Do not prompt for confirmation when overwriting credential files.
    --help(-h)                              # help for create
    --vaults=strings: string@"nu completion vaults"                        # Grant the Connect server access to these vaults.

    name: string
]

# Get a Connect server
export extern "connect server get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for get

    server: string@"nu completion server" #  [{ <serverName> | <serverID> | - }]
]

# Rename a Connect server
export extern "connect server edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help        # help for edit
    --name=name: string   # Change the server's name.

    server: string@"nu completion server" #  [{ <serverName> | <serverID> }
]


# Remove a Connect server
export extern "connect server delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for delete

    server: string@"nu completion server" #  [{ <serverName> | <serverID> | - }]
]

alias "connect server rm" = connect server delete
alias "connect server remove" = connect server delete


# List Connect servers
export extern "connect server list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for list
]

alias "connect server ls" = connect server list



#                                   _     _        _
#                                  | |   | |      | |
#    ___ ___  _ __  _ __   ___  ___| |_  | |_ ___ | | _____ _ __
#   / __/ _ \| '_ \| '_ \ / _ \/ __| __| | __/ _ \| |/ / _ \ '_ \
#  | (_| (_) | | | | | | |  __/ (__| |_  | || (_) |   <  __/ | | |
#   \___\___/|_| |_|_| |_|\___|\___|\__|  \__\___/|_|\_\___|_| |_|

# Manage Connect server tokens
export extern "connect token" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for token
]

# Issue a token for a 1Password Connect server
export extern "connect token create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --expires-in=duration: string@"nu completion duration"  # Set how long the Connect token is valid for in (s)econds, (m)inutes, (h)ours, (d)ays, and/or (w)eeks.
    --help(-h)                 # help for create
    --server=string: string                                 # Issue a token for this server.
    --vault=stringArray: string@"nu completion vaults"                                  # Issue a token on these vaults.

    tokenName: string
]

# Rename a Connect server token
export extern "connect token edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)            # help for edit
    --name=string: string  #   Change the token's name.
    --server=string: string@"nu completion server" #   Only look for tokens for this 1Password Connect server.

    token: string
]

# Revoke a token for a Connect server
export extern "connect token delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)            # help for delete
    --server string: string@"nu completion server"   # Only look for tokens for this 1Password Connect server.

    token: string
]

alias "connect token rm" = connect token delete
alias "connect token remove" = connect token delete

# Get a list of tokens
export extern "connect token list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)            # help for list
    --server=server   # Only list tokens for this Connect server.
]

#                                   _                      _ _
#                                  | |                    | | |
#    ___ ___  _ __  _ __   ___  ___| |_  __   ____ _ _   _| | |_
#   / __/ _ \| '_ \| '_ \ / _ \/ __| __| \ \ / / _` | | | | | __|
#  | (_| (_) | | | | | | |  __/ (__| |_   \ V / (_| | |_| | | |_
#   \___\___/|_| |_|_| |_|\___|\___|\__|   \_/ \__,_|\__,_|_|\__|

# Manage Connect server vault access
export extern "connect vault" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                  # help for vault
]

# Grant a Connect server access to a vault
export extern "connect vault grant" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help            # help for grant
    --server=string: string@"nu completion server"   # The server to be granted access.
    --vault=string: string@"nu completion vault"    # The vault to grant access to.
]
# Revoke a Connect server's access to a vault
export extern "connect vault revoke" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help            # help for revoke
    --server=server: string@"nu completion server"   # The server to revoke access from.
    --vault=vault: string@"nu completion vault"     # The vault to revoke a server's access to.
]

#       dP                                                           dP
#       88                                                           88
# .d888b88 .d8888b. .d8888b. dP    dP 88d8b.d8b. .d8888b. 88d888b. d8888P
# 88'  `88 88'  `88 88'  `"" 88    88 88'`88'`88 88ooood8 88'  `88   88
# 88.  .88 88.  .88 88.  ... 88.  .88 88  88  88 88.  ... 88    88   88
# `88888P8 `88888P' `88888P' `88888P' dP  dP  dP `88888P' dP    dP   dP

# Perform CRUD operations on Document items in your vaults
export extern document [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)  # help for document
]

# Create a document item
export extern "document create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --file-name=name: string   # Set the file's name.
    --help(-h)            # help for create
    --tags=tags: string@"nu completion tag"       # Set the tags to the specified (comma-separated) values.
    --title=title:  string      # Set the document item's title.
    --vault=vault: string@"nu completion vault"     # Save the document in this vault. Default: Private.

    file: string  # [{ <file> | - }]
]

# Download a document
export extern "document get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --file-mode=filemode   # Set filemode for the output file. It is ignored without the --out-file flag. (default 0600)
    --force                # Forcibly print an unintelligible document to an interactive terminal. If --out-file is specified, save the document to a file without prompting for confirmation.
    --help                 # help for get
    --include-archive      # Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.
    --out-file=path(-o): path        # Save the document to the file path instead of stdout.
    --vault=vault: string@"nu completion vault"          # Look for the document in this vault.

    item # { <itemName> | <itemID> }
]

# Edit a document item
export extern "document edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --file-name=name: string   # Set the file's name.
    --help(-h)             # help for edit
    --tags=tags: string@"nu completion tag"        # Set the tags to the specified (comma-separated) values. An empty value removes all tags.
    --title=title: string      # Set the document item's title.
    --vault=vault: string@"nu completion vault"      # Look up document in this vault.

    ...items # { <itemName> | <itemID> } [{ <file> | - }]
]

# Delete or archive a document item
export extern "document delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --archive       # Move the document to the Archive.
    --help(-h)          # help for delete
    --vault=vault: string@"nu completion vault"   # Delete the document in this vault.

    ...items # [{ <itemName> | <itemID> | - }]
]

alias "document rm" = document delete
alias "document remove" = document delete

# Get a list of documents
export extern "document list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help              # help for list
    --include-archive   # Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.
    --vault=vault: string@"nu completion vault"       # Only list documents in this vault.
]

alias "document ls" = document list

#                                       dP                                       oo
#                                       88
# .d8888b. dP   .dP .d8888b. 88d888b. d8888P .d8888b.          .d8888b. 88d888b. dP
# 88ooood8 88   d8' 88ooood8 88'  `88   88   Y8ooooo. 88888888 88'  `88 88'  `88 88
# 88.  ... 88 .88'  88.  ... 88    88   88         88          88.  .88 88.  .88 88
# `88888P' 8888P'   `88888P' dP    dP   dP   `88888P'          `88888P8 88Y888P' dP
#                                                                       88
#                                                                       dP

# Manage Events API integrations in your 1Password connect
export extern events-api [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for events-api
]

# Create an Events API integration token.
export extern "events-api create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --expires-in=duration: string@"nu completion duration"  # Set how the long the events-api token is valid for in (s)econds, (m)inutes, (h)ours, (d)ays, and/or (w)eeks.
    --features=features: string@"nu completion feature"    # Set the comma-separated list of features the integration token can be used for. Options: 'signinattempts', 'itemusages', 'auditevents'.
    --help(-h)             # help for create

    name: string
]



# .d8888b. 88d888b. .d8888b. dP    dP 88d888b.
# 88'  `88 88'  `88 88'  `88 88    88 88'  `88
# 88.  .88 88       88.  .88 88.  .88 88.  .88
# `8888P88 dP       `88888P' `88888P' 88Y888P'
#      .88                            88
#  d8888P                             dP

# Manage the groups in your 1Password account
export extern group [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for group
]


# Create a group
export extern "group create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --description=string: string   # Set the group's description.
    --help                 # help for create

    name: string
]

# Get details about a group
export extern "group get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for get

    ...groups # [{ <groupName> | <groupID> | - }]
]

# Edit a group's name or description
export extern "group edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --description=description: string   # Change the group's description.
    --help                      # help for edit
    --name=name: string                 # Change the group's name.

    ...groups # [{ <groupName> | <groupID> | - }]
]

# Remove a group
export extern "group delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for delete

    ...groups # [{ <groupName> | <groupID> | - }]
]

alias "group rm" = group delete
alias "group remove" = group delete

# List groups
export extern "group list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)      # help for list
    --user=user: string@"nu completion user"     # List groups that a user belongs to.
    --vault=vault: string@"nu completion vault"   # List groups that have direct access to a vault.
]


#                                                                                        _                                                   _
#                                                                                       | |                                                 | |
#    __ _ _ __ ___  _   _ _ __    _ __ ___   __ _ _ __   __ _  __ _ _ __ ___   ___ _ __ | |_    ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
#   / _` | '__/ _ \| | | | '_ \  | '_ ` _ \ / _` | '_ \ / _` |/ _` | '_ ` _ \ / _ \ '_ \| __|  / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
#  | (_| | | | (_) | |_| | |_) | | | | | | | (_| | | | | (_| | (_| | | | | | |  __/ | | | |_  | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
#   \__, |_|  \___/ \__,_| .__/  |_| |_| |_|\__,_|_| |_|\__,_|\__, |_| |_| |_|\___|_| |_|\__|  \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
#    __/ |               | |                                   __/ |
#   |___/                |_|                                  |___/

#   _  _ ___ ___ _ _
#  | || (_-</ -_) '_|
#  \_,_/__/\___|_|


# Manage group membership
export extern "group user" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for user
]

# Add a user to a group
export extern "group user grant" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --group=string: string@"nu completion group"   # Specify the group to add the user to.
    --help(-h)           # help for grant
    --role=string: string@"nu completion role"    # Specify the user's role as a member or manager. Default: member.
    --user=string: string@"nu completion user"    # Specify the user to add to the group.
]

# Remove a user from a group
export extern "group user revoke" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --group=string: string@"nu completion group"   # Specify the group to remove the user from.
    --help(-h)           # help for revoke
    --user=string: string@"nu completion user"    # Specify the user to remove from the group.
]

# Retrieve users that belong to a group
export extern "group user list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for list

    group: string@"nu completion group"
]

alias "group user ls" = group user list

# oo   dP
#      88
# dP d8888P .d8888b. 88d8b.d8b.
# 88   88   88ooood8 88'`88'`88
# 88   88   88.  ... 88  88  88
# dP   dP   `88888P' dP  dP  dP

# Perform CRUD operations on the 1Password items in your vaults
export extern item [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for item
]

# Create an item
export extern "item create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --category=category: string@"nu completion category"                                           # Set the item's category.
    --dry-run                                         # Test the command and output a preview of the resulting item.
    --favorite                                        # Add item to favorites.
    --generate-password=recipe: string@"nu completion generate-password"                      # Add a randomly-generated password to a Login or Password item.
    --help(-h)                                        # help for create
    --ssh-generate-key: string@"nu completion ssh-generate-key"                                # The type of SSH key to create: Ed25519 or RSA. For RSA, specify 2048, 3072, or 4096 (default) bits. Possible values: 'ed25519', 'rsa', 'rsa2048', 'rsa3072', 'rsa4096'. (default Ed25519)
    --tags tags                                       # Set the tags to the specified (comma-separated) values.
    --template=string: path                                 # Specify the file path to read an item template from.
    --title=title: string                                     # Set the item's title.
    --url=URL: string                                         # Set the URL associated with the item
    --vault=vault: string@"nu completion vault"                                     # Save the item in this vault. Default: Private.

    ...assignments
]

# Get an item's details
export extern "item get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --fields=strings: string    # Return data from specific fields. Use 'label=' to get the field by name or 'type=' to filter fields by type. Specify multiple in a comma-separated list.
    --help(-h)              # help for get
    --include-archive   # Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.
    --otp               # Output the primary one-time password for this item.
    --reveal            # Don't conceal the private SSH key when using human-readable output.
    --share-link        # Get a shareable link for the item.
    --vault=string: string@"nu completion vault"        # Look for the item in this vault.

    ...items # [{ <itemName> | <itemID> | <shareLink> | - }]
]

# Edit an item's details
export extern "item edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --dry-run                      # Perform a dry run of the command and output a preview of the resulting item.
    --favorite: string@"nu completion bool"                      # Whether this item is a favorite item. Options: true, false
    --generate-password=recipe: string@"nu completion generate-password"   # Give the item a randomly generated password.
    --help(-h)                         # help for edit
    --tags=tags: string@"nu completion tag"                    # Set the tags to the specified (comma-separated) values. An empty value will remove all tags.
    --template string              # Specify the filepath to read an item template from.
    --title=title: string                  # Set the item's title.
    --url=URL: string                      # Set the URL associated with the item
    --vault=vault: string@"nu completion vault"                  # Edit the item in this vault.

    item    # { <itemName> | <itemID> | <shareLink> }
    ...assignments  # [ <assignment> ... ]
]

# Delete or archive an item
export extern "item delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --archive        # Move the item to the Archive.
    --help           # help for delete
    --vault string   # Look for the item in this vault.

    ...items    #  [{ <itemName> | <itemID> | <shareLink> | - }]
]

alias "item rm" = item delete
alias "item remove" = item delete

# List items
export extern "item list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --categories=categories: string@"nu completion category"   # Only list items in these categories (comma-separated).
    --favorite                # Only list favorite items
    --help(-h)                # help for list
    --include-archive         # Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.
    --long                    # Output a more detailed item list.
    --tags=tags: string@"nu completion tag"               # Only list items with these tags (comma-separated).
    --vault=vault: string@"nu completion vault"             # Only list items in this vault.
]

alias "item ls" = item list

# Move an item between vaults
export extern "item move" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --current-vault=string: string@"nu completion vault"       # Vault where the item is currently saved.
    --destination-vault=string: string@"nu completion vault"   # The vault you want to move the item to.
    --help                       # help for move

    ...items    # [{ <itemName> | <itemID> | <shareLink> | - }]
]

alias "item mv" = item move

# Share an item
export extern "item share" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --emails=strings: string        # Email addresses to share with.
    --expires-in=duration: string@"nu completion duration"   # Expire link after the duration specified in (s)econds, (m)inutes, (h)ours, (d)ays, and/or (w)eeks. (default 7d)
    --help                  # help for share
    --vault=string: string@"nu completion vault"          # Look for the item in this vault.
    --view-once             # Expire link after a single view.
]

#   _ _                   __  __                                                   _      _____                                          _
#  (_) |                 |  \/  |                                                 | |    / ____|                                        | |
#   _| |_ ___ _ __ ___   | \  / | __ _ _ __   __ _  __ _  ___ _ __ ___   ___ _ __ | |_  | |     ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
#  | | __/ _ \ '_ ` _ \  | |\/| |/ _` | '_ \ / _` |/ _` |/ _ \ '_ ` _ \ / _ \ '_ \| __| | |    / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
#  | | ||  __/ | | | | | | |  | | (_| | | | | (_| | (_| |  __/ | | | | |  __/ | | | |_  | |___| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
#  |_|\__\___|_| |_| |_| |_|  |_|\__,_|_| |_|\__,_|\__, |\___|_| |_| |_|\___|_| |_|\__|  \_____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
#                                                   __/ |
#                                                  |___/

#   _                  _      _
#  | |_ ___ _ __  _ __| |__ _| |_ ___
#  |  _/ -_) '  \| '_ \ / _` |  _/ -_)
#   \__\___|_|_|_| .__/_\__,_|\__\___|
#                |_|

# Manage templates
export extern template [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for template
]

# Get an item template
export extern "item template get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --file-mode=filemode       # Set filemode for the output file. It is ignored without the --out-file flag. (default 0600)
    --force(-f)                # Do not prompt for confirmation.
    --help(-h)                 # help for get
    --out-file(-o)=string: path      # Write the template to a file instead of stdout.

    ...category # [{ <category> | - }]
]

# Get a list of templates
export extern "item template list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for list
]

alias "item template ls" = item template list

#          dP                   oo
#          88
# 88d888b. 88 dP    dP .d8888b. dP 88d888b.
# 88'  `88 88 88    88 88'  `88 88 88'  `88
# 88.  .88 88 88.  .88 88.  .88 88 88    88
# 88Y888P' dP `88888P' `8888P88 dP dP    dP
# 88                        .88
# dP                    d8888P

# Manage the shell plugins you use to authenticate third-party CLIs
export extern plugin [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for plugin
]


# List all available shell plugins
export extern "plugin list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for list
]

alias "plugin ls" = plugin list

# Clear shell plugin configuration
export extern "plugin clear" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --all         # Clear all configurations for this plugin that apply to this directory and/or terminal session, including the global default.
    --force(-f)   # Apply immediately without asking for confirmation.
    --help(-h)    # help for clear

    plugin_name: string
]

alias "plugin reset" = plugin clear

# Configure a shell plugin
export extern "plugin init" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for init

    executable: string # [ <plugin-executable> ]
]

# Inspect your existing shell plugin configurations
export extern "plugin inspect" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for inspect

    plugin_name: string
]

alias "plugin info" = plugin inspect

# Provision credentials from 1Password and run this command
export extern "plugin run" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for run

    ...command
]

#         _             _         __  __                                                   _      _____                                          _
#        | |           (_)       |  \/  |                                                 | |    / ____|                                        | |
#   _ __ | |_   _  __ _ _ _ __   | \  / | __ _ _ __   __ _  __ _  ___ _ __ ___   ___ _ __ | |_  | |     ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
#  | '_ \| | | | |/ _` | | '_ \  | |\/| |/ _` | '_ \ / _` |/ _` |/ _ \ '_ ` _ \ / _ \ '_ \| __| | |    / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
#  | |_) | | |_| | (_| | | | | | | |  | | (_| | | | | (_| | (_| |  __/ | | | | |  __/ | | | |_  | |___| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
#  | .__/|_|\__,_|\__, |_|_| |_| |_|  |_|\__,_|_| |_|\__,_|\__, |\___|_| |_| |_|\___|_| |_|\__|  \_____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
#  | |             __/ |                                    __/ |
#  |_|            |___/                                    |___/

# Manage credentials for shell plugins
export extern "plugin credential" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for credential
]

# Import credentials for a shell plugin
export extern "plugin credential import" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)        # help for import

    plugin_name: string@"nu completion plugin_name"
]


#                                     oo                                                                                    dP
#                                                                                                                           88
# .d8888b. .d8888b. 88d888b. dP   .dP dP .d8888b. .d8888b.          .d8888b. .d8888b. .d8888b. .d8888b. dP    dP 88d888b. d8888P
# Y8ooooo. 88ooood8 88'  `88 88   d8' 88 88'  `"" 88ooood8 88888888 88'  `88 88'  `"" 88'  `"" 88'  `88 88    88 88'  `88   88
#       88 88.  ... 88       88 .88'  88 88.  ... 88.  ...          88.  .88 88.  ... 88.  ... 88.  .88 88.  .88 88    88   88
# `88888P' `88888P' dP       8888P'   dP `88888P' `88888P'          `88888P8 `88888P' `88888P' `88888P' `88888P' dP    dP   dP

# Manage service accounts
export extern service-account [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for service-account
]

# Create a service account
export extern "service-account create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --can-create-vaults     # Allow the service account to create new vaults.
    --expires-in=duration: string@"nu completion duration"   # Set how long the service account is valid for in (s)econds, (m)inutes, (h)ours, (d)ays, or (w)eeks.
    --help(-h)                  # help for create
    --raw                   # Only return the service account token.
    --vault=stringArray: string@"nu completion vault"     # Give access to this vault with a set of permissions. Has syntax <vault-name>:<permission>[,<permission>]

    serviceAccountName: string
]

# Retrieve rate limit usage for a service account
export extern "service-account ratelimit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for ratelimit

    ...accounts    # [{ <serviceAccountName> | <serviceAccountID> }]
]

alias "service-account ratelimits" = service-account ratelimit




# dP    dP .d8888b. .d8888b. 88d888b.
# 88    88 Y8ooooo. 88ooood8 88'  `88
# 88.  .88       88 88.  ... 88
# `88888P' `88888P' `88888P' dP


# Manage users within this 1Password account
export extern user [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for user
]

# Provision a user in the authenticated account
export extern "user provision" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --email=string: string      # Provide the user's email address.
    --help(-h)              # help for provision
    --language=string: string@"nu completion language"   # Provide the user's account language. (default "en")
    --name=string: string       # Provide the user's name.
]

# Confirm a user
export extern "user confirm" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --all        # Confirm all unconfirmed users.
    --help(-h)   # help for confirm

    ...user # [{ <email> | <name> | <userID> | - }]
]

# Get details about a user
export extern "user get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --fingerprint   # Get the user's public key fingerprint.
    --help(-h)          # help for get
    --me            # Get the authenticated user's details.
    --public-key    # Get the user's public key.

    ...user         #  [{ <email> | <name> | <userID> | --me | - }]
]

# Edit a user's name or Travel Mode status
export extern "user edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help                 # help for edit
    --name=string: string          # Set the user's name.
    --travel-mode: string@"nu completion onoff"   # Turn Travel Mode on or off for the user. (default off)

    user                #  [{ <email> | <name> | <userID> | - }]
]

# Suspend a user
export extern "user suspend" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --deauthorize-devices-after=duration: string@"nu completion duration"  # Deauthorize the user's devices after a time (rounded down to seconds).
    --help(-h)                                # help for suspend

    user                    # [{ <email> | <name> | <userID> | - }]
]

# Reactivate a suspended user
export extern "user reactivate" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for reactivate

    ...user                    # [{ <email> | <name> | <userID> | - }]
]

# Remove a user and all their data from the account
export extern "user delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for delete

    ...user                    # [{ <email> | <name> | <userID> | - }]
]

alias "user rm" = user delete
alias "user remove" = user delete

# List users
export extern "user list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --group=group: string@"nu completion group"   # List users who belong to a group.
    --help(-h)          # help for list
    --vault=vault: string@"nu completion vault"   # List users who have direct access to vault.
]

alias "user ls" = user list


#                            dP   dP
#                            88   88
# dP   .dP .d8888b. dP    dP 88 d8888P
# 88   d8' 88'  `88 88    88 88   88
# 88 .88'  88.  .88 88.  .88 88   88
# 8888P'   `88888P8 `88888P' dP   dP

# Manage permissions and perform CRUD operations on your 1Password vaults
export extern vault [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for vault
]


# Create a new vault
export extern "vault create" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --allow-admins-to-manage: string@"nu completion bool"   # Set whether administrators can manage the vault. If not provided, the default policy for the account applies.
    --description=description: string             # Set the group's description.
    --help(-h)                            # help for create
    --icon=string: string@"nu completion vault_icon"                         # Set the vault icon.

    name: string
]

# Get details about a vault
export extern "vault get" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for get

    ...vaults: string@"nu completion vault" # [{ <vaultName> | <vaultID> | - }]
]

# Edit a vault's name, description, icon, or Travel Mode status
export extern "vault edit" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --description description   # Change the vault's description.
    --help(-h)                    # help for edit
    --icon=icon: string@"nu completion vault_icon"               # Change the vault's icon.
    --name=name: string                        # Change the vault's name.
    --travel-mode: string@"nu completion onoff"      # Turn Travel Mode on or off for the vault. Only vaults with Travel Mode enabled are accessible while a user has Travel Mode turned on. (default off)

    ...vaults: string@"nu completion vault" # [{ <vaultName> | <vaultID> | - }]
]

# Remove a vault
export extern "vault delete" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for delete

    ...vaults: string@"nu completion vault" # [{ <vaultName> | <vaultID> | - }]
]

alias "vault rm" = vault delete
alias "vault remove" = vault delete

# List all vaults in the account
export extern "vault list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --group=string: string@"nu completion group"             # List vaults a group has access to.
    --help(-h)                 # help for list
    --permission=permissions   # List only vaults that the specified user/group has this permission for.
    --user=string: string@"nu completion user"              # List vaults that a given user has access to.
]


#                    _ _     __  __                                                   _      _____                                          _
#                   | | |   |  \/  |                                                 | |    / ____|                                        | |
#  __   ____ _ _   _| | |_  | \  / | __ _ _ __   __ _  __ _  ___ _ __ ___   ___ _ __ | |_  | |     ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
#  \ \ / / _` | | | | | __| | |\/| |/ _` | '_ \ / _` |/ _` |/ _ \ '_ ` _ \ / _ \ '_ \| __| | |    / _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
#   \ V / (_| | |_| | | |_  | |  | | (_| | | | | (_| | (_| |  __/ | | | | |  __/ | | | |_  | |___| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
#    \_/ \__,_|\__,_|_|\__| |_|  |_|\__,_|_| |_|\__,_|\__, |\___|_| |_| |_|\___|_| |_|\__|  \_____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/
#                                                      __/ |
#                                                     |___/



#   __ _ _ _ ___ _  _ _ __
#  / _` | '_/ _ \ || | '_ \
#  \__, |_| \___/\_,_| .__/
#  |___/             |_|

# Manage group vault access
export extern "vault group" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for group
]

# Grant a group permissions to a vault
export extern "vault group grant" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --group=group: string@"nu completion group"               # The group to receive access.
    --help(-h)                      # help for grant
    --no-input=input            # Do not prompt for input on interactive terminal.
    --permissions=permissions: string@"nu completion permission"   # The permissions to grant to the group.
    --vault=vault: string@"nu completion vault"               # The vault to grant group permissions to.
]

# Revoke a portion or the entire access of a group to a vault
export extern "vault group revoke" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --group=group: string@"nu completion group"               # The group to revoke access from.
    --help(-h)                      # help for revoke
    --no-input=input            # Do not prompt for input on interactive terminal.
    --permissions=permissions: string@"nu completion permission"   # The permissions to revoke from the group.
    --vault=vault: string@"nu completion vault"               # The vault to revoke access to.
]

# List all the groups that have access to the given vault
export extern "vault group list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for list

    --vault=vault: string@"nu completion vault"
]

alias "vault group ls" = vault group list



#   _   _ ___  ___ _ __
#  | | | / __|/ _ \ '__|
#  | |_| \__ \  __/ |
#   \__,_|___/\___|_|

# Manage user vault access
export extern "vault user" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for user
]

# Grant a user access to a vault
export extern "vault user grant" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)                      # help for grant
    --no-input=input            # Do not prompt for input on interactive terminal.
    --permissions=permissions: string@"nu completion permission"   # The permissions to grant to the user.
    --user=user: string@"nu completion user"                 # The user to receive access.
    --vault=vault: string@"nu completion vault"               # The vault to grant access to.
]

# Revoke a portion or the entire access of a user to a vault
export extern "vault user revoke" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help                      # help for revoke
    --no-input=input            # Do not prompt for input on interactive terminal.
    --permissions=permissions: string@"nu completion permission"   # The permissions to revoke from the user.
    --user=user: string@"nu completion user"                 # The user to revoke access from.
    --vault=vault: string@"nu completion vault"               # The vault to revoke access to.
]

# List all users with access to the vault and their permissions
export extern "vault user list" [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for list

    vault: string@"nu completion vault"
]

alias "vault user ls" = vault user list


#    ######   #######  ##     ## ##     ##    ###    ##    ## ########   ######
#   ##    ## ##     ## ###   ### ###   ###   ## ##   ###   ## ##     ## ##    ##
#   ##       ##     ## #### #### #### ####  ##   ##  ####  ## ##     ## ##
#   ##       ##     ## ## ### ## ## ### ## ##     ## ## ## ## ##     ##  ######
#   ##       ##     ## ##     ## ##     ## ######### ##  #### ##     ##       ##
#   ##    ## ##     ## ##     ## ##     ## ##     ## ##   ### ##     ## ##    ##
#    ######   #######  ##     ## ##     ## ##     ## ##    ## ########   ######

# Generate shell completion information
export extern completion [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for completion

    shell: string@"nu completion completion_shell"
]

# Inject secrets into a config file
export extern inject [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --file-mode=filemode       # Set filemode for the output file. It is ignored without the --out-file flag. (default 0600)
    --force(-f)                # Do not prompt for confirmation.
    --help(-h)                 # help for inject
    --in-file(-i)=string: path       # The filename of a template file to inject.
    --out-file(-o)=string: path      # Write the injected template to a file instead of stdout.
]

# Read a secret reference
export extern read [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --file-mode=filemode       # Set filemode for the output file. It is ignored without the --out-file flag. (default 0600)
    --force(-f)                # Do not prompt for confirmation.
    --help(-h)                 # help for read
    --no-newline(-n)           # Do not print a new line after the secret.
    --out-file(-o)=string: path      # Write the secret to a file instead of stdout.

    reference: string
]

# Pass secrets as environment variables to a process
export extern run [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --env-file=stringArray: path   # Enable Dotenv integration with specific Dotenv files to parse. For example: --env-file=.env.
    --help(-h)                   # help for run
    --no-masking             # Disable masking of secrets on stdout and stderr.

    # "--": string
    ...command: string
]

# Sign in to a 1Password account
export extern signin [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --force(-f)   # Ignore warnings and print raw output from this command.
    --help(-h)    # help for signin
    --raw         # Only return the session token.
]

# Sign out of a 1Password account
export extern signout [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --all      # Sign out of all signed-in accounts.
    --forget   # Remove the details for a 1Password account from this device.
    --help(-h)     # help for signout
]

# Check for and download updates.
export extern update [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --channel=string: string@"nu completion update_channel"     # Look for updates from a specific channel. allowed: stable, beta
    --directory=string: path   # Download the update to this ''path''.
    --help(-h)               # help for update
]

# Get information about a signed-in account
export extern whoami [
    # GLOBAL FLAGS
    --account=account: string@"nu completion account"       # Select the account to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run 'op account list'. Can be set as the OP_ACCOUNT environment variable.
    --cache                                                 # Store and use cached information. Caching is enabled by default on UNIX-like systems. Caching is not available on Windows. Options: true, false. Can also be set with the OP_CACHE environment variable. (default true)
    --config=directory: path                                # Use this configuration directory.
    --debug                                                 # Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.
    --encoding=type: string@"nu completion encoding"        # Use this character encoding type. Default: UTF-8. Supported: SHIFT_JIS, gbk.
    --format=string: string@"nu completion format"          # Use this output format. Can be 'human-readable' or 'json'. Can be set as the OP_FORMAT environment variable. (default "human-readable")
    --iso-timestamps                                        # Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.
    --no-color                                              # Print output without color.
    --session=token: string                                 # Authenticate with this session token. 1Password CLI outputs session tokens for successful 'op signin' commands when 1Password app integration is not enabled.
    --version(-v)                                           # version for op

    --help(-h)   # help for whoami
]



#   ##    ## ##     ##     ######   #######  ##     ## ########  ##       ######## ######## ####  #######  ##    ##  ######
#   ###   ## ##     ##    ##    ## ##     ## ###   ### ##     ## ##       ##          ##     ##  ##     ## ###   ## ##    ##
#   ####  ## ##     ##    ##       ##     ## #### #### ##     ## ##       ##          ##     ##  ##     ## ####  ## ##
#   ## ## ## ##     ##    ##       ##     ## ## ### ## ########  ##       ######      ##     ##  ##     ## ## ## ##  ######
#   ##  #### ##     ##    ##       ##     ## ##     ## ##        ##       ##          ##     ##  ##     ## ##  ####       ##
#   ##   ### ##     ##    ##    ## ##     ## ##     ## ##        ##       ##          ##     ##  ##     ## ##   ### ##    ##
#   ##    ##  #######      ######   #######  ##     ## ##        ######## ########    ##    ####  #######  ##    ##  ######

def "nu completion format" [] {
    [
        json
        human-readable
    ]
}

def "nu completion encoding" [] {
    [
        UTF-8
        SHIFT_JIS
        gbk
    ]
}

def "nu completion update_channel" [] {
    [
        stable
        beta
    ]
}

def "nu completion group" [] {
    let groups = op group list --format json
        | from json
        | upsert description {|row| $"($row.name) \(($row.state)): ($row.description)"}
        | select id name description state
        |  rename value description
    $groups
}

def "nu completion server" [] {
    []
}

def "nu completion vault" [] {
    let vaults = op vault list --format json | from json | select id name | rename value description
    $vaults
}

def "nu completion vaults" [ctx: string] {
    let vaults =  $ctx | nu completion parse-context | get vaults
    if ($vaults | is-empty) or not ($vaults | str ends-with ,) {
        nu completion vault
    } else {
        nu completion vault | each {|e| $"($vaults.value)($e)" }
    }
}

def "nu completion vault_icon" [] {
    [airplane, application, art-supplies, bankers-box, brown-briefcase, brown-gate, buildings, cabin, castle, circle-of-dots, coffee, color-wheel, curtained-window, document, doughnut, fence, galaxy, gears, globe, green-backpack, green-gem, handshake, heart-with-monitor, house, id-card, jet, large-ship, luggage, plant, porthole, puzzle, rainbow, record, round-door, sandals, scales, screwdriver, shop, tall-window, treasure-chest, vault-door, vehicle, wallet, wrench]
}

def "nu completion duration" [] {
    []
}

def "nu completion tag" [] {
    let tags = op item list --format json | from json | get tags
    $tags
}

def "nu completion feature" [] {
    []
}

def "nu completion user" [] {
    let users = op user list --format json | from json | upsert name {|row| $"($row.name) \(($row.type) - ($row.state)): ($row.email)"} | select id name | rename value description
    $users
}

def "nu completion role" [] {
    []
}

def "nu completion category" [] {
    [
        "API Credential"    "Bank Account"              "Credit Card"
        Database          Document                  "Driver License"
        "Email Account"     Identity                  Login
        Membership        "Outdoor License"           Passport
        Password          "Reward Program"            "Secure Note"
        Server            "Social Security Number"    "Software License"
        SSH Key           "Wireless Router"
    ]
}

def "nu completion generate-password" [] {
    []
}

def "nu completion ssh-generate-key" [] {
    ['ed25519', 'rsa', 'rsa2048', 'rsa3072', 'rsa4096']
}

def nu_plugins [] {
    op plugin list --format json | from json
}

def "nu completion plugin_name" [] {
    nu_plugins | get plugin_name | uniq
}

def "nu completion permission" [] {
    []
}

def "nu completion onoff" [] {
    [on off]
}

def "nu completion completion_shell" [] {
    [zsh fish powershell bash]
}

def "nu completion language" [] {
    [en de fr it pl ru es zh-cn zh-tw ja ko pt-br es-mx en-us]
}

def "nu completion bool" [] {
    [ true false ]
}

def "nu completion account" [] {
    let accounts = op account list --format json | from json | select account_uuid email | rename value description
    $accounts
}

# ##     ## ######## ##       ########  ########   ######
# ##     ## ##       ##       ##     ## ##     ## ##    ##
# ##     ## ##       ##       ##     ## ##     ## ##
# ######### ######   ##       ########  ########   ######
# ##     ## ##       ##       ##        ##   ##         ##
# ##     ## ##       ##       ##        ##    ##  ##    ##
# ##     ## ######## ######## ##        ##     ##  ######

const parse_args_rg = "(?<opening_quote>['\"`]?)(?<content>.*?)(?<closing_quote>\\k<opening_quote>)(?<separator>\\s+)"
const parse_option_name_rg = "(?:--?)(?<option_name>[\\w-]+)"

export def "nu completion parse-context" [] string -> {cmd: string, args: list<string>} {
    # context strings starts at cursor position
    let ctx = $in + ' ' # add space to end to ensure last part is parsed🙄
    mut parse = $ctx | parse --regex $parse_args_rg
    # ? below would substitue forward slash quote with just the quote not sure if it's necessary but I'll leave it out
    # | each {|e| $e | upsert content  {|c| if $c.opening_quote == '' {$c.content} else { $c.content | str replace -r --all "\\\\(.)" "$1"} }}
    mut content = ''

    mut cmd = {cmd: $parse.content.0, args: []}
    mut args = []

    $parse = ($parse | skip 1)

    # parse options and arguments
    while ($parse | length) > 0 {
        let currentArg = $parse.0
        let content = $currentArg.content
        # check if part is an option
        let isOption = ($content | str starts-with '-')
        # if it is an option add the next value as the value of option name's key
        if $isOption {
            # no need to check for whitespace (\s) in the regex, because content is non-greedy AKA not parsing of option name from raw command string like above
            let optName = $content | parse --regex "(?:--?)(?<option_name>[\\w-]+)" | get option_name | first
            if ($parse | length) == 1 {
                $cmd = ($cmd | upsert $optName null)
            } else {
                # check if it is the last arg with an unclosed quote
                let nextArg = $parse.1
                if $nextArg.opening_quote == '' and ($nextArg.content | parse --regex "(?<quote>['\"`])(?:.*)" | is-not-empty) {
                    let optValue = $parse | skip 2 | reduce -f ($nextArg.content | str substring 1..) {|e,acc| $acc + ' ' + $e.content }
                    $parse = ($parse | last 2)
                    $cmd = ($cmd | upsert $optName $optValue)
                } else {
                    let optValue = $parse.content | get 1
                    $cmd = ($cmd | upsert $optName $optValue)
                }
            }
        } else { # not an option: add it to the args list (...rest)
            if ($content | parse --regex "(?<quote>['\"`])(?:.*)" | is-not-empty) {
                let $content = $parse | skip 1 | reduce -f ($content | str substring 1..) {|e,acc| $acc + ' ' + $e.content } | str trim #don't know why it needs the trim but it does🤷🏿‍♂️
                $args ++= $content
                $parse = [[]; []]
            } else {
                $args ++= $content
            }
        }
        $parse = ($parse | skip (1 + if $isOption {1} else {0}))
    }
    $cmd | upsert args $args
}


def "nu completion output" [
        ctx: string,    # entered command [sub command, args, + options]
        --complete (-c) # if the copletion should have a closing quote and terminating space
    ] list<string> -> list<string>, string -> list<string> {
    let output = $in
    let parse = $ctx + ` `
    | parse --regex $parse_args_rg
    | last
    let opening_quote = $parse | get opening_quote
    let content = $parse | get content

    # checks within the content (unmatched quote) or if there is a matched quote (unlinkely "some val"-> [why would they tab complete herre?])
    if $opening_quote != '' {
        let quote = $opening_quote
        $output | each {|e| if $complete { $"($quote)($e)($quote) " } else { $"($quote)($e)" } }
    } else if ($content | parse --regex "(?<quote>['\"`])(?:.*)" | is-not-empty) {
        let quote = $content | str substring 0..1
        $output | each {|e| if $complete { $"($quote)($e)($quote) " } else { $"($quote)($e)" }}
    } else {
        let quote = '`'
        let wrap = $output | any {|e| $e | str contains ' '}
        $output | each {|e|
            if $wrap {
                if $complete {
                    $"($quote)($e)($quote) "
                } else {
                    $"($quote)($e)"
                }
            } else {
                if $complete {
                    $e + ' '
                } else {
                    $e
                }
            }
        }
    }
}
