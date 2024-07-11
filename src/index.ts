import { registerPlugin } from '@capacitor/core';

import type { FiservTransactionPlugin } from './definitions';

const FiservTransaction = registerPlugin<FiservTransactionPlugin>(
  'FiservTransaction',
  {
    web: () => import('./web').then(m => new m.FiservTransactionWeb()),
  },
);

export * from './definitions';
export { FiservTransaction };
