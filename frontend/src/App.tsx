import { useEffect, useState } from 'react';
import { createClient } from '@supabase/supabase-js';

interface Transaction {
  id: number;
  title: string;
  value: number;
  date: string;
}

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL as string;
const supabaseKey = import.meta.env.VITE_SUPABASE_ANON_KEY as string;
const supabase = createClient(supabaseUrl, supabaseKey);

function App() {
  const [transactions, setTransactions] = useState<Transaction[]>([]);

  useEffect(() => {
    supabase
      .from('transactions')
      .select('*')
      .then(({ data }) => {
        if (data) setTransactions(data as Transaction[]);
      });
  }, []);

  return (
    <div className="p-4">
      <h1 className="text-2xl font-bold mb-4">Transações</h1>
      <ul className="space-y-2">
        {transactions.map((t) => (
          <li key={t.id} className="border p-2 rounded">
            <div className="font-semibold">{t.title}</div>
            <div>Valor: {t.value}</div>
            <div>Data: {new Date(t.date).toLocaleDateString()}</div>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;
