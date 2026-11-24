<a href="https://makc.co">
    <img src="https://makc.co/images/github-header.svg" alt="MAKC lgoo" title="MAKC" align="right" height="50" />
</a>

# JSON Fortune (`fortune-json`)
A supplemental script that allow `fortune` to output quotes from a custom database in `.json` format, rather than just `.dat` files.

## Installation
### Dependencies 
* `jq`
* `cowfortune`

| Distribution | Install Command |
| ------------ | --------------- | 
| Arch Linux | `sudo pacman -Syu git make jq cowfortune` |
| Fedora | `sudo dnf install cowsay fortune-mod git make` |
| Ubuntu | `sudo apt update; sudo apt install cowsay fortune-mod git make` |

### Manual Install
1. Clone this repository: 
```bash
git clone https://github.com/makccr/fortune-json
```
2. Build from source: 
```bash
cd fortune-json &&
makepkg -si
```

## Usage
```bash
fortune-json ~/path/to/quotes
```

### Expected JSON Structure
I built the script to expect a fairly specific JSON structure that utilizes two unique objects (`quote` & `author`) in each item in the array. Any deviation from the format defined below will require some light modification to the script. 

```json
[
    {
    "quote": "You can’t stop the waves, but you can learn how to surf.",
    "author": "John Kabat-Zin"
    },
    {
    "quote": "And those who were seen dancing were thought to be insane by those who could not hear the music.",
    "author": "Friedrich Nietzsche"
    }
]
```

## Sample File & Inspiration
I created this project after spending some time creating a random quote generator for my [personal website](https://makc.co). I have long used a custom `fortune` database, generated with `strfile` to add quotes to the TTY, and even made a [video about it](https://youtube.com/watch?v=ZVXIJfyVbRE) several years ago. However, after I made the JSON database for my website, I knew that I'd be to lazy to maintain both an offline quotes database in `.dat` format, and the JSON file that I had built for my website. Not wanting either database to suffer stale quotes, or not get the latest snippets of wisdom, sarcasm and lunacy; I spent some time figuring out how to simply use one file for both applications. If you are interested, the quotes database that I use on my website and in my terminals is located on my website at: [makc.co/_data/quotes.json](https://youtube.com/watch?v=ZVXIJfyVbRE).
