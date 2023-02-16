# Criar um Aplicativo WEB
# Utilizando  o STREAMLIT e o modelo de IA usado na V1, o aluno deverá cria uma pagina Web onde será possível realizar previsões.

# DETALHES
# Dataset: https://archive.ics.uci.edu/ml/datasets/zoo
# Aluno: Plínio Larrubia Ferreira de Moura

# pip install streamlit
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from pandas._config.config import options
from pandas.core import algorithms
import sklearn.metrics as metrics
import streamlit as st
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix, ConfusionMatrixDisplay

DATA_PATH = 'data/zoo.data.csv'


def load_data():
    """
    Carrega os dados do DataSet do zoológico.

    :return: DataFrame com colunas selecionadas.
    """
    header_list = [
        'animal_name', 'hair', 'feathers', 'eggs', 'milk', 'airborne',
        'aquatic', 'predator', 'toothed', 'backbone', 'breathes', 'venomous',
        'fins', 'legs', 'tail', 'domestic', 'catsize', 'type'
    ]

    data = pd.read_csv('data/zoo.data.csv', usecols=[
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], names=header_list)
    return data


def load_x_and_y(data):
    """
    Usa o DataSet do zoológico para devolver o X e Y de treino e teste.

    :return: X e Y do DataSet do zoológico.
    """

    x = data.drop(columns=['animal_name', 'type'])
    y = data['type']

    return x, y


def load_ai_model(x, y):
    x_train, x_test, y_train, y_test = train_test_split(
        x, y, test_size=0.3, random_state=0)
    st.write('*Treino*: ', x_train.shape, y_train.shape,
             '*Teste*: ', x_test.shape, y_test.shape)
    model = LogisticRegression()
    model.fit(x_train, y_train)

    return model, x_test, y_test


def load_sidebar(data):
    st.sidebar.header('Escolha os parâmetros para Predição')
    st.sidebar.subheader('Parâmetros')
    params = dict()

    dataset_name = st.sidebar.selectbox('Selecione o Dataset', ['Zoo'])
    algorithm_name = st.sidebar.selectbox(
        'Selecione o Algoritmo', ['Regressão Logística'])
    params['hair'] = add_parameter_ui(label='Tem cabelo?', column_name='hair')
    params['feathers'] = add_parameter_ui(
        label='Tem penas?', column_name='feathers')
    params['eggs'] = add_parameter_ui(label='Tem ovos?', column_name='eggs')
    params['milk'] = add_parameter_ui(label='Tem leite?', column_name='milk')
    params['airborne'] = add_parameter_ui(
        label='Pode voar?', column_name='airborne')
    params['aquatic'] = add_parameter_ui(
        label='É aquático?', column_name='aquatic')
    params['predator'] = add_parameter_ui(
        label='É predador?', column_name='predator')
    params['toothed'] = add_parameter_ui(
        label='Tem dentes?', column_name='toothed')
    params['backbone'] = add_parameter_ui(
        label='Tem espinha dorsal?', column_name='backbone')
    params['breathes'] = add_parameter_ui(
        label='Respira?', column_name='breathes')
    params['venomous'] = add_parameter_ui(
        label='É venenoso?', column_name='venomous')
    params['fins'] = add_parameter_ui(
        label='Tem barbatanas?', column_name='fins')
    labels = sorted(data['legs'].unique())
    params['legs'] = add_parameter_ui(label='Quantidade de pernas', column_name='legs',
                                      bool=False, min_value=0, max_value=8, sel_options=labels)
    params['tail'] = add_parameter_ui(label='Tem rabo?', column_name='tail')
    params['domestic'] = add_parameter_ui(
        label='É doméstico?', column_name='domestic')
    params['catsize'] = add_parameter_ui(
        label='Tem tamanho de gato?', column_name='catsize')

    params = pd.DataFrame(params, index=[0])

    return dataset_name, algorithm_name, params


def add_parameter_ui(label='LABEL', column_name='COLUMN_NAME', default_value=0, bool=True, min_value=0, max_value=0, sel_options=['SELECT_OPTION_1', 'SELECT_OPTION_2']):
    if bool:
        input = int(st.sidebar.checkbox(
            label=label, value=default_value, key=column_name))
    else:
        input = st.sidebar.select_slider(
            label="Quantidade de pernas",
            options=sel_options,
        )
        # input = st.sidebar.slider(
        #     label=label, min_value=min_value, max_value=max_value, value=default_value, key=column_name)

    return input


def main():
    zoo_data = load_data()
    dataset_name, algorithm_name, params = load_sidebar(zoo_data)

    st.title('Utilização do Streamlit para demonstração da Avaliação 1')
    st.write('---')
    st.header(f"{dataset_name} Dataset")

    x_zoo, y_zoo = load_x_and_y(data=zoo_data)
    model, x_test, y_test = load_ai_model(x=x_zoo.values, y=y_zoo.values)
    prediction = model.predict(x_test)
    aux_table = pd.DataFrame()
    aux_table['Type - Y Teste'] = y_test
    aux_table[f'Type - {algorithm_name}'] = prediction
    prediction_percentage = metrics.r2_score(y_test, prediction)

    st.write('*Shape do Dataset*: ', zoo_data.shape)
    st.write('*Quantidade de Classes*: ', np.unique(y_zoo).size)
    st.write('*Algoritmo*: ', algorithm_name)
    st.write('*Precisão (%)*: ', prediction_percentage * 100)
    st.subheader('Começo da Tabela')
    st.write(zoo_data.head(3))
    st.write('---')

    st.header(f'Predição de {algorithm_name}')
    st.subheader('Classe de animal')
    st.write(aux_table)

    st.subheader('Acurácia')
    st.write(f"""
            ```py
            {classification_report(y_test, prediction)}
            """)

    st.header(f'Predição Manual (Ajustar valores ao lado)')
    st.write('*Shape Atual*: ', params.shape)
    st.write(params)
    st.subheader('Classe de animal')
    manual_pred = model.predict(params)
    man_pred_table = pd.DataFrame()
    man_pred_table['Type - Customizado'] = manual_pred
    st.write(pd.DataFrame(man_pred_table))
    st.markdown("""
                | Classe | Conjunto de animais:            |
                | -----: | -------------------             |
                |      1 | (41) porco-da-terra, antílope, urso, javali, búfalo, bezerro, preá, chita, veado, golfinho, elefante, fruitbat, girafa, menina, cabra, gorila, hamster, lebre, leopardo, leão, lince, vison, toupeira, mangusto, gambá, órix, ornitorrinco, doninha, pônei, toninha, puma, gatinho, guaxinim, rena, foca, leão-marinho, esquilo, vampiro, ratazana, canguru, lobo |
                |      2 | (20) galinha, corvo, pomba, pato, flamingo, gaivota, falcão, kiwi, cotovia, avestruz, periquito, pinguim, faisão, ema, escumadeira, skua, pardal, cisne, abutre, carriça |
                |      3 | (5)  víbora, cobra do mar, verme lento, tartaruga, tuatara |
                |      4 | (13) robalo, carpa, bagre, chub, cação, arinca, arenque, lúcio, piranha, cavalo-marinho, linguado, arraia, atum |
                |      5 | (4)  sapo, rã, salamandra, sapo |
                |      6 | (8)  pulga, mosquito, abelha, mosca doméstica, joaninha, mariposa, cupim, vespa |
                |      7 | (10) molusco, caranguejo, lagostim, lagosta, polvo, escorpião, vespa do mar, lesma, estrela do mar, verme |
                """)


if __name__ == '__main__':
    main()
