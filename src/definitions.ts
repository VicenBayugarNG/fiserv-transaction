export interface FiservTransactionPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
