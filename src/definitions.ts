export interface IntunePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
