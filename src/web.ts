import { WebPlugin } from '@capacitor/core';

import type { FiservTransactionPlugin } from './definitions';

export class FiservTransactionWeb
  extends WebPlugin
  implements FiservTransactionPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
