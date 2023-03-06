import pyspark

def replace_null_values_col(df, col_name):
    df = df.fillna("",[col_name])
    return df

