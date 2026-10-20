# homebrew-mac-control

Le tap Homebrew de **Mac Control** : une régie de barre des menus qui héberge des plugins parlant JSON-RPC
(macOS 14 ou plus récent, puce Apple).

## Installer

```sh
brew install --cask labutteronde/mac-control/mac-control
```

Mise à jour : `brew upgrade --cask mac-control`.

L'app est signée avec la même identité à chaque version : l'autorisation **Accessibilité** donnée une fois dans
Réglages Système reste valable après les mises à jour.

## Si une copie de Mac Control est déjà dans Applications

Une app installée à la main bloque l'installation (« It seems there is already an App at … »). Quittez Mac Control,
mettez `/Applications/Mac Control.app` à la corbeille, puis installez.

## En cas d'erreur « App source '/Applications/Mac Control.app' is not there »

Homebrew croit Mac Control installé alors que l'app a été mise à la corbeille à la main. Oubliez l'ancienne
installation, puis réinstallez :

```sh
brew uninstall --cask --force mac-control && brew install --cask labutteronde/mac-control/mac-control
```

---

## Install (English)

```sh
brew install --cask labutteronde/mac-control/mac-control
```

If a hand-installed copy is already in `/Applications`, quit it and move it to the Trash first.
