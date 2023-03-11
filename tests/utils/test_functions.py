import pytest
import pyspark
from chispa.column_comparer import assert_column_equality
from pyspark.sql import SparkSession

from src.utils.functions import replace_null_values_col

spark = (SparkSession.builder
  .master("local")
  .appName("test-functions")
  .getOrCreate())

def test_replace_null_values_for_cero():
    data = [
        ("null", 0),
        ("NULL", 0),
        ("3", 3)
    ]
    df = spark.createDataFrame(data, ["sells", "expected_sells"])
    df = replace_null_values_col(df, "sells")
    
    assert_column_equality(df, "sells", "expected_sells")

def check_replace_null_values_for_cero_data_type():
    data = [
        ("null", 0),
        ("NULL", 0),
        ("3", 3)
    ]
    df = spark.createDataFrame(data, ["sells", "expected_sells"])
    df = replace_null_values_col(df, "sells")
    
    assert dict(df.dtypes)['sells'] == dict(df.dtypes)['expected_sells'], f"column data type is not as expected"
