
notify {"Welcome to ${fqdn}":
}

class {"foreman":
    ssl => false,
}