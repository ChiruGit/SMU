// Function to read data in from CSV and return an array of floats

float[] importData(String fileName) {
  // Read CSV file into Table
  Table table = loadTable(fileName, "header");
  
  // Initialize array of floats to contain winning percentages
  int rowCount = table.getRowCount();
  float[] winningPct = new float[rowCount];

  // Iterate through table rows to populate the array of floats
  int rowIndex = 0;
  for (TableRow row : table.rows()) {    
    Float record = row.getFloat("W-L%");
    winningPct[rowIndex] = record;
    rowIndex++;
  }
  
  // Return the array of floats after it has been populated
  return winningPct;
}