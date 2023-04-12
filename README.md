# kubex-bash
Chanding context and namespace in kubectl is a pain. This script will help you to switch context and namespace easily.


## Usage and commands

| Command | Description  |
|---------|-------------------|
| `k`     | Alias for kubectl |
| `kc`    | Show current context |
| `kc ls` | List contexts |
| `kc set <context_name>` | Switch context to <context_name> |
| `kn`    | Show current namespace |
| `kn ls` | List namespaces |
| `kn set <namespace_name>` | Switch namespace to <namespace_name> |

## Installation

```shell
# Clone the repository to your home directory
cd ~

git clone https://github.com/kewinremy/kubex-bash.git
```

```shell
# Add the following line to your .bashrc file
$ vi ~/.bashrc

if [ -f ~/kubex-bash/kubex.sh ]; then
    . ~/kubex.sh
fi
```

