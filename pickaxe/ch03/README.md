# 클래스, 객체, 변수
- 루비에서는 모든 것이 객체다.
- 클래스 이름은 대문자로 시작해야 한다.
- 메서드 이름은 소문자로 시작해야 한다.
- 각 객체는 자신만의 인스턴스 변수를 가지고 있다.

### puts 와 to_s
> 객체를 문자열로 나타내는 표준 메세지 to_s가 있으며, puts는 내부적으로 넘겨받은 객체에서 to_s를 호출하고 결과를 출력한다.


## 객체와 속성
객체의 내부가 외부에 노출되는 부분을 객체의 속성(attribute)이라고 하며, 객체 외부에서 객체 상태에 접근하거나 조작하는 메서드를 별도로 정의해서 외부에서도 객체 상태에 접근 가능하도록 만들어 준다.
- attr_reader 메서드는 접근자 메서드를 대신 생성해 준다.
- :isbn 은 isbn이라는 이름을 지칭하며, 콜론 없이 isbn을 사용하면 변수의 값 자체를 의미한다.
- attr_reader는 접근자 메서드를 생성하지만, 변수 자체는 선언할 필요가 없다.
- 루비에서 인스턴스 변수와 접근자 메서드는 완전히 분리되어 있다.(가상 속성)


### 쓰기 가능한 속성
- 루비에서는 메서드 이름 뒤에 = 기호를 사용해 대입 기능을 구현할 수 있다. 
- 이렇게 만들어진 메서드는 값을 대입하는데 사용할 수 있다.
- attr_writer 표현식을 제공한다.
- attr_accessor 메서드는 attr_reader 와 attr_writer 를 한 번에 정의해준다.

### 가상 속성
`class_virtual_attribute.rb` 참 객체 밖에서 price_icents 는 다른 속성들과 마찬가지로 객체의 속성으로 보인다. 하지만 내부적으로 이 속성에 대응하는 인스턴스 변수는 존재하지 않는다.
그래서 가상 속성으로 불린다.

### 속성, 인스턴스 변수, 메서드
- 지금까지 보면 속성은 메서드일 뿐이다.
- 속성은 인스턴스 변수의 값을 반환하며, 때로는 계산 결과를 반환하기도 한다.
- 객체의 상태를 바꾸는 용도로 사용하기도 한다.
- 속성과 메서드를 구분하는 것은 쓸데없다.

## 다른 클래스와 함께 사용하기
하나의 클래스에 모든 코드를 넣고 프로그래밍을 하면
- 하나의 파일에서 모든 걸 다루기 어려워진다.
- 하나의 덩어리로 되어 있는 코드는 자동화된 테스트를 작성하기 어렵다.
- 재사용이 불가능해진다.

## 접근제어
클래스에 너무 깊이 접근하도록 허용하면, 각 요소간의 결합도(coupling)가 높아질 수 있다. 즉, 이 클래스의 사용자 코드는 클래스 내부 구현의 세세한 부분에까지 종속적이 되기 쉽다는 뜻이다.

루비에는 세 가지 보호 단계가 있다.
- public
  - 루비에서는 기본적으로 public 이다
  - 예외, initialize 는 항상 private
- protected
  - 객체를 정의한 클래스와 하위 클래스에서만 호출할 수 있다.
- private
  - 객체를 정의한 클래스에서만 호출이 가능하다.
    
루비가 다른 객체 지향 언어와 다른점, `접근제어가 동적으로 결정`된다. 즉, 프로그램이 실행될 떄 결정된다. 따라서 접근 위반 예외는 제한된 메서드를 실제로 호출한 그 순간에만 발생한다. (코드레벨에서 잡아낼 수 있는게 아니라 런타임 시에 발생한다는 의미인듯?)

### 접근제어 기술하기
접근제어 방법은 두 가지가 있다.
1. public, protected, private 키워드 다음 메서드를 정의하는 방법
2. 접근 제어 함수 뒤에 인자로 메서드 이름을 써 주는 방법

```ruby
class MyClass
  def method1
    #...
  end
  
  protected # 이 아래 선언하는 메서드는 모두 protected
  def method2
    #...
  end
  
  private # 이 아래 선언하는 메서드는 모두 private
  def method3
    #...
  end
  
  public # 이 아래 선언 하는 모든 메서드는 public
  def method4
    #...
  end
end
```

```ruby
class MyClass
  def method1
  end
  def method2
  end
  def method3
  end
  def method4
  end
  
  public :method1, :method4
  protected :method2
  private :method3
end
```

## 변수
- 변수는 객체에 대한 참조를 저장하고 있다.
- 객체는 변수가 아니다. 단순히 객체에 대한 참조를 가지고 있을 뿐이다.
- 루비의 문자열은 자바와 달리 변경이 가능하다.
- String 의 dup 메서드를 사용하면 문자열을 복사한다.
- freeze 를 사용하여 객체의 상태를 변경할 수 없도록 할 수 있다.
```ruby
person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "Hi #{person}"
```
```text
실행결과:
The object in 'person' is a String
The object has an id of 120938102947120
Hi Tim
```
