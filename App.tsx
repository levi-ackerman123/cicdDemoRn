import React, {useState} from 'react';
import {StyleSheet, Text, TextInput, View} from 'react-native';
import CodePush from 'react-native-code-push';

const App = () => {
  const [value1, setValue1] = useState('');
  const [value2, setValue2] = useState('');

  return (
    <View style={styles.screen}>
      <Text style={styles.text}>Welcome User</Text>
      <TextInput
        keyboardType="number-pad"
        value={value1}
        style={styles.input}
        placeholder={'add number 1'}
        onChangeText={(text: string) => setValue1(text)}
      />
      <TextInput
        keyboardType="number-pad"
        value={value2}
        style={styles.input}
        placeholder={'add number 2'}
        onChangeText={(text: string) => setValue2(text)}
      />
      <Text style={styles.answer}>
        Answer : {Number(value1) + Number(value2)}
      </Text>
    </View>
  );
};

export default CodePush(App);

const styles = StyleSheet.create({
  screen: {
    flex: 1,
    marginHorizontal: 10,
    justifyContent: 'center',
  },
  text: {
    fontSize: 18,
    color: 'red',
    fontWeight: 'bold',
    textAlign: 'center',
  },
  input: {
    borderWidth: 1,
    borderRadius: 5,
    marginVertical: 10,
    height: 50,
  },
  answer: {
    fontSize: 18,
    marginTop: 15,
    color: '#000',
  },
});
