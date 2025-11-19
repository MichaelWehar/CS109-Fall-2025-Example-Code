class Identity {
  public int publicKey;
  private int privateKey;
  Identity(int publicKey, int privateKey) {
    this.publicKey = publicKey;
    this.privateKey = privateKey;
  }
  boolean equals(Identity other) {
    return other != null && this.publicKey == other.publicKey;
  }
}
