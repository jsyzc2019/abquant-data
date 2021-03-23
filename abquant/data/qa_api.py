# -*- coding: utf-8 -*-
from abquant.utils.code import code_tostr
from typing import Optional
import pandas as pd


def get_stock_block() -> Optional[pd.DataFrame]:
    """ths的版块数据

    Returns:
        [type] -- [description]
    """

    url = "http://data.yutiansut.com/self_block.csv"
    try:
        bl = pd.read_csv(url)
        return bl.assign(
            code=bl["证券代码"].apply(code_tostr),
            blockname=bl["行业"],
            name=bl["证券名称"],
            source="outside",
            type="outside",
        ).set_index("code", drop=False)
    except Exception as e:
        print(e)
        return None


def get_stock_list(type_=None) -> Optional[pd.DataFrame]:
    return


def my_name():
    return "QA"
