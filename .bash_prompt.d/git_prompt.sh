#!/bin/bash
git_prompt() {
    local branch="$(git symbolic-ref HEAD 2>/dev/null | cut -d'/' -f3-)"
    local branch_truncated="${branch:0:15}"

    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi

    [ -n "${branch}" ] && echo "(⎇ ${branch})"
}
