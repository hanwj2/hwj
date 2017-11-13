# ------- 2017_10_23 R ���� # 
# R ��Ʃ��� ���ϰ���â - file - �۾����� Ŭ�� - More(set as working directory Ŭ��)
# R ����  source â���� ���� : ���� �����ϰ� ctrl+enter
# R console â Ŭ���� : consol â���� ctrl+L
# ��� �������� rm(list=ls()) 
# ��Ű���� install.packages("��Ű����"), ���� Ȱ��� library(��Ű����)
install.packages("package_name") # ��Ű�� ��ġ, GUI ������� ��õ
library(package_name) # ��Ű�� �̿�� ����, GUI ��� ��package �� �׸�ڽ� üũ
vignette("package_name") # ��Ű���� ���� ������ ������ pdf���Ϸ� �� �� ��

# �۾� �߰��� �ѱ��� �Ƚ��� ��� : alt+tab ȭ�� ���� ��, ��õ�
file.create("file_name.R") # working directory�� R���� ����
file.edit("file_name.R") # ���� ����
source("file_name.R") # ���Ͽ� ������ �ڵ带 �����ϱ� ���� ����

# ���� ������� ��ȿ�ڸ��� ����
options(digits=7)
4/3
options(digits=10) # �ϴ� 10�ڸ��� ���� �ϰ� ������ �°� �����Ѵ�.

# ���� ��� end


# --------------------------------
# R�� �н��� ���αװ� ǳ���ϴ�.
# --------------------------------

# R  �⺻ �� : http://blog.naver.com/PostView.nhn?blogId=sorwd2001&logNo=220575760129&parentCategoryNo=&categoryNo=&viewDate=&isShowPopularPosts=false&from=postView

# http://blog.naver.com/beyondanova/220947740863

# R ���� �ڷ�ó�� : http://blog.naver.com/liberty264/220627758839
# Word cloud site http://blog.naver.com/liberty264/220616866103

# http://blog.naver.com/beyondanova/220947740863
# http://blog.naver.com/sw4r/220947662194   �� �о��
# http://blog.naver.com/sw4r/220947636803
# ��ü - 1�� 1���� �ڷ�, ��ü�� ���� - list  
# ��ü�� �ڷᱸ�� - 7����(��Į��, ����, ���, �迭, ����Ʈ, ����, ������������)   
# http://blog.naver.com/sw4r/220947706818

# ���׵�� blog
# http://blog.naver.com/liberty264/220999922431
# http://blog.naver.com/liberty264/220984298909  R ���� 
# http://blog.naver.com/liberty264/220992998669  R ���

# �׷��� �׸��� ggpplot2, lattice, qplot(), ggmap, 

# http://blog.naver.com/liberty264/221004390848 ggplot2 ��Ű��  �׷��� �ۼ��� ���� ���� Ȱ��
# http://blog.naver.com/liberty264/221064041168 lattice��Ű�� Ȱ�� �׷��� �ۼ�
# http://blog.naver.com/liberty264/221065202687 qplot() ��Ű��
# http://blog.naver.com/liberty264/221065408166 ggmap ��Ű��
# http://blog.naver.com/liberty264 3���� ������
# http://blog.naver.com/liberty264/221018193084 ���� chart
# http://blog.naver.com/liberty264/220982348293 Box plot
# http://blog.naver.com/liberty264/220751221418 ������ �Լ�

# https://www.statmethods.net/   R �ż� �н�

# R �н��� ���α� ǳ�� end


# ---------------
# R�� ���� �Լ�
# ---------------
# �����Լ��� �ڷ� �ҷ�����   ��Ű���� �ڷ� �ҷ�����  ��

# 1. �����Լ� Ȱ�� �ҷ�����
# �ڷ� �ٿ�ε� : �����(bit.ly/doit_ra) ���� excel_exam.csv �ٿ�ε� �� �������� ����� 
# �Ǵ� ���� �ּ� �Է� https://github.com/youngwoos/Doit_R/tree/master/Data
# https://github.com/youngwoos/Doit_R/blob/master/Data/csv_exam.csv

# CSV ���� : Comma seperated Values 
# CSV ������ ����, SAS, SPSS, R �� ���κ��� ������ �ٷ�� ���α׷����� ��� ���� 
# ���� .xlsx ���� ���Ŀ� ���� �뷮�� �����ϰ� ���� ��.

# ������Ʈ ������ CSV ���� �����ϱ� 

exam <- read.csv("csv_exam.csv")  # ���� �Լ��θ� �ҷ�����
exam

# �� ������ CSV ������ ���� ���ڷ� �����Ǿ� ���� 

# ���� ���ڰ� ��� �ִ� ������ �ҷ��� ��� stringsAsFactors = F�� �����ؾ� ��.
# �׷��߸� ������ factor Ÿ���� �ƴ� ����Ÿ������ �ҷ����� ������ �߻��ȵȴ�.

exam <- read.csv("csv_exam.csv", stringsAsFactors = F)  # ���� �Լ��θ� �ҷ�����
exam


# �����Լ��� ������ �����ϱ�  �����Լ��� ���ȣ [] �ȿ� �Է�
exam[]  # ���Ǿ��� ��ü ������ ���

exam[1,] # 1�� ����
exam[2,] # 2�� ����

exam[,1] # 1�� ����

exam[3,3]  # 3��3�� ��� ����

exam[exam$class == 1,]  # class�� 1�� ��� ����
exam[exam$math >= 80,]  # ���������� 80�� �̻��� �� ����

exam[exam$class == 1 & exam$math >= 50,]  # 1�� �̸鼭 ���������� 50�� �̻��� ��� ����

exam[exam$english < 90 | exam$science < 50,] # ����˼��� 90�� �̸��̰ų� ���������� 50�� �̸� 

data1 <- exam[exam$english < 90 | exam$science < 50,]  # ���� ����� ������ ��ü
data1

# ���������� ���� ����
exam[,"class"]  # class ���� ����
exam[,"math"]   # math  ���� ����

# []���ο� c() �̿��, �� ���� ���� ������ ����
exam[,c("class", "math", "english")]  #  class, math, english ���� ����

exam[exam$math >=50, c("math", "english")]  # �� �ε�ȣ ����, �� ������


## �����Լ� Ȱ��� dplyr ��Ű�� Ȱ�� ���� ���� : dplyr(������ ���, ���ص� ����.)
# �������� 50���̻�, �������� 80�� �̻��� �л����� ������� �� ���� ������ ����� ���Ͻÿ�.
options(digits=5)  # ��ȿ���� ����
# 1. �����Լ� ���� �� �ڵ�     aggregate() : ���ֺ� ��� ��跮�� ���ϴ� R ���� �Լ�
exam$tot <- (exam$math + exam$english + exam$science)/3
exam$tot
aggregate(data=exam[exam$math >=50 & exam$english >= 80,], tot~class, mean)

# 2. dplyr ���� �� �ڵ�
install.packages(dplyr)
library(dplyr)

exam %>%
  filter(math >= 50 & english >= 80) %>%
  mutate(tot = (math + english + science)/3) %>% 
  group_by(class) %>% 
  summarise(mean = mean(tot))

# R�� ���� �Լ�  end


# 2. �ܺ� �����͸� ��Ű���� �̿��Ͽ� �ҷ�����
# �ڷ� �ٿ�ε� : �����(bit.ly/doit_ra) ���� excel_exam.xlsx �ٿ�ε� �� �������� ����� 
install.packages("readxl")  # l ���ĺ�Ʈ ��
library(readxl)

df_exam <- read_excel("excel_exam.xlsx")
df_exam

dim(df_exam) # ���� ��� ũ�� 
str(df_exam) # ������ �Ӽ� Ȯ��
head(df_exam) # �������� �Ϻθ� ��� 

head(df_exam, 10) # ������ �������� ��� ", ����" �����Ͽ� �Ϻ� ǥ�� ����
tail(df_exam) # ������ �޺κ� Ȯ���ϱ�
tail(df_exam, 3) # ������ �޺κ� ��, ���ϴ� �ٸ�ŭ Ȯ�� ����

View(df_exam) # ������ ������ â���� �ڷḦ ������
summary(df_exam) #���� ��跮 ǥ��

mean(df_exam$english)
var(df_exam$english)
sd(df_exam$english)
# ���� ���� ù��° ���� �������� �ƴ� ��� ?
# read_excel()�� �⺻������ ����° ���� ���������� �ν��մϴ�. 
# ���� �ٿ�ε� : �����(bit.ly/doit_ra) ���� excel_exam_novar.xlsx �ٿ�ε� �� �������� �����  

df_exam_novar <- read_excel("excel_exam_novar.xlsx")
df_exam_novar

View(df_exam_novar) # ������ ������ â���� �ڷḦ ������

# �� ��쿡�� col_names = F �Ķ���͸� �����ϸ� ù��° ���� �������� �ƴ� �����ͷ� �ν��Ѵ�.
# F�� �������� ��Ÿ���� ������ ����  ��, ���̸��� ������ ���ΰ��� �ƴϿ���� ���� ��
# �̶� �������� "X__����"�� �ڵ� ����ȴ�. F �� �빮�� �Է� �ʼ�   ���������ʹ� ��� �빮��

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

mean(df_exam$english)
var(df_exam$english)
sd(df_exam$english)

# -------------------------------------------------------------------------------------------------------
install.packages("readxl")  # l ���ĺ�Ʈ ��
library(readxl)

##### 10�� 30�� ���� ����
# ���� ���Ͽ� ���������� ��Ʈ�� �ִٸ� ?
# ���� �ٿ�ε� : �����(bit.ly/doit_ra) ���� excel_exam_sheet.xlsx �ٿ�ε� �� �������� �����  
df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
View(df_exam_sheet)

df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 4)  # sheet ������ �߿�
View(df_exam_sheet)
options(digits=7)
data.frame(df_exam_sheet) # ������ ��ü ����ϱ�

# ������ �ľ��ϱ� 
# �����͸� �ľ��� �� ����ϴ� �Լ��� ���
# �Լ�        ���
head(df_exam_sheet)    #  ������ �պκ� ��� 
tail(df_exam_sheet)    #  ������ �޺κ� ���
View(df_exam_sheet)    #  ���â���� ������ Ȯ��
dim(df_exam_sheet)     #  ������ ���� ���
str(df_exam_sheet)     #  ������ �Ӽ� ���
summary(df_exam_sheet) #  ��� ��跮 ���

# ������ csv_exam.csv ������ �ҷ��´�.
exam <- read.csv("csv_exam.csv") # �ڷ��Ͼ����

data.frame(exam) # ������ ��ü���
head(exam) # �������� �Ϻθ� ��� 
head(exam, 10) # ������ �������� ��� ", ����" �����Ͽ� �Ϻ� ǥ�� ����
tail(exam) # ������ �޺κ� Ȯ���ϱ�
tail(exam, 5) # ������ �޺κ� ��, ���ϴ� �ٸ�ŭ Ȯ�� ����
View(exam) # ������ ������ â���� �ڷḦ ������
dim(exam) # ���� ��� ũ�� 
str(exam) # ������ �Ӽ� Ȯ��
summary(exam) #���� ��跮 ǥ��
# Min(�ּڰ�), 1st Qu(1������� ; ���� 25%������ ��ġ�ϴ� ��), Meadian(�߾���ġ��), Mean(��հ�), 
# 3rd Qu(���� 75%������ ��ġ�ϴ� ��), Max(�ִ�)


### ������ �������� CSV ���Ϸ� �����ϱ� 
# 1. ������ ������ �����
# 2. CSV ���Ϸ� �����ϱ�
# 3. R ���� ������ ���Ϸ� �����ϱ�  .rdata   .rda

# 1. ������ ������ �����
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50,60,100,20),
                         science = c(98,78,100,88),
                         class = c(1, 1, 2, 2))

df_midterm

# 2. CSV ���Ϸ� �����ϱ�
write.csv(df_midterm, file = "df_midterm.csv")    # �ĸ� Ȯ��
write.csv(df_midterm, file = "df_lyc.csv")    # �ĸ� Ȯ��
# 3. R ���� ������ ���Ϸ� �����ϱ� 
save(df_midterm, file = "df_midterm.rda")
View(df_midterm.rda)
# Rdata �ҷ�����
rm(df_midterm)
df_midterm

load("df_midterm.rda")
df_midterm


#### read_excel("   .xlsx")     read.csv("      .csv")     load("    .rda")


# ---------------
# ���� Ÿ�� 
# ---------------
install.packages(dplyr)
library(dplyr)
# ���� Ÿ��
# ���Ӻ��� : Ű, ������, �ҵ� �������̰� ũ�⸦ �ǹ��ϴ� �� - �������� ������ ����  'numeric' ���� ǥ��
# ���ֺ��� : ����� �з��ϴ� �ǹ̸� ���ϴ� ����, ����, ���� �� - ������ �Ұ� 'factor'�� ǥ��

# �پ��� ���� Ÿ��
# Data type      �ǹ�          �� ����
# numeric        �Ǽ�         1, 12.3
# integer        ����         1L, 23L
# complex        ���Ҽ�       3+2i
# character      ����         "male", "123", "#Female#"
# logical        ����         TRUE, FALSE, T, F
# factor         ����         1, 2, a, b              ����� �з��ϴ� �ǹ̸� ���ϴ� ����
# Date           ��¥         "2017-10-23", "23/10/17"      


math <- c(30,20,50,20,56)   # numeric ����
math

math+3

class(math) # ����Ÿ��Ȯ��
levels(math) # factor ������ ���� ���� Ȯ���ϱ�  Null�� ����
mean(math) # ���������� ����� ���

var2 <- factor(c(30,20,50,20,56))   # factor ����  Level �� �ٴ´�.
var2

var2+3

class(var2) # ����Ÿ��Ȯ��
levels(var2) # factor ������ ���� ���� Ȯ���ϱ� "" �� ����
mean(var2)  # ���

# var2�� ��� ����� ���� ���, �������� �ٲپ� ���� ��.
var2 <- as.numeric(var2)

mean(var2)

class(var2)
levels(var2)  # Null�� ����

# as.numeric(), as.factor(), as.character(), as.Date(), as.data.frame() ������ ��ȯ
# Data type : numeric(�Ǽ�), integer(����), complex(���Ҽ�), character(���Ҽ�),
#             character(����), logical(����  TRUE, FALSE, T, F), factor(����)


# ���ڷ� ������ factor ����
var3 <- c("a", "b", "c")    # ���ں��� ����
var4 <- factor(c("a", "b", "c"))   # ���ڷ� �� factor ���� ����

var3
class(var3)

var4  # level ǥ�� ����
class(var4)

# ���� Ÿ�� end



# ---------------
#  ������ ���� #
# ---------------
# ���� : 1���� : �Ѱ��� ���� Ÿ������ ����
# ������ ������ : 2���� : �پ��� ���� Ÿ������ ����
# ��Ʈ����(matrix) : 2���� : �Ѱ��� ���� Ÿ������ ����
# ���(Array) : ������ : 2���� �̻��� ��Ʈ����
# ����Ʈ(list) : ������ : ���� �ٸ� ������ ���� ����

# 1. ����
a <- 1
a
class(a)  # ������ ���� Ȯ��

b <- "Hello"
b
class(b)   # ������ ���� Ȯ��

# 2. ������ ������
x1 <- data.frame(var1 = c(1,2,3),
                 var2 = c("a", "b", "c"))
x1
class(x1)


# 3. ��Ʈ����(matrix)
x2 <- matrix(c(1:12), ncol=2)

class(x2)


# 4. ���(Arrary)
x3 <- array(1:20, dim=c(2,5,2))
x3      # 2�� 5���� 2��
class(x3)

# 5. ����Ʈ (list)
x4 <- list(f1 = a,
           f2 = x1,
           f3 = x2,
           f4 = x3)
x4
class(x4)

install.packages("ggplot2") ; library(ggplot2)
mpg <- ggplot2 :: mpg
View(mpg)
class(mpg)
x <- boxplot(mpg$cty)
x


x$stats[,1]       # ��� ��跮
x$stats[,1][3]    # �߾Ӱ� ����
x$stats[,1][2]    # 1������ ����
summary(x$stats)
str(x)
# ������ ���� �н� end ---------------------------------- 


# help ggplot2, mpg  

# ---------------------
#  �ڽ� �׸� Boxplot  #
# --------------------- 

# ���� ���� : ���� ���� �Ÿ� ���� -------(11�� ���� : Ȧ�� ����)
survey <- c(100.023, 101.014, 99.921, 100.011, 100.001, 99.987, 99.999, 99.823, 100.092, 99.876, 100.103,98.3)
boxplot(survey)
mean(survey)

# �̻�ġ�� ���������� ó���ϱ�
survey <- ifelse(survey > 100.3 | survey < 99.0, NA, survey)
survey
mean(survey)

table(is.na(survey))

# ���� ����ġ �����ϰ� �м��ϱ�
mean(survey, na.rm = T)


## �̻�ġ �����ϱ� - �ش����� ��  ���ڱ׸�(box plot)Ȱ�� ���� : �ش�ġ ��谪�� +- �ʰ��ϴ� ��ü
# ���ڱ׸� ����
# ���ڱ׸�                ��                  ����
# ���ھƷ� ��������       �Ʒ�����            ���� 0-25% ���� �ش��ϴ� ��
# ���ڹظ�                1�������(Q1)       ���� 25% ��ġ��
# ���ڳ� ���� ��          2�������(Q2)       ���� 50% ��ġ��(�߾Ӱ�)
# ��������                3�������(Q3)       ���� 75% ��ġ��
# ���� �� ���� ����       ������              ���� 75-100% ���� �ش��ϴ� ��
# ���� �� ���μ�          �ش�ġ ���         Q1, Q3 �� 1.5 IQR �� �ִ�
# ���� �� �� ǥ��         �ش�ġ              Q1, Q3 �� 1.5 IQR�� ��� ��

# 1.5 IQR : 4���� ����(Q1-Q3 �� �Ÿ�)�� 1.5��
### -------------------------------------------------------------------------- 11�� 6�� ������ ���� 
boxplot(mpg$hwy)

boxplot(mpg$hwy)$stats
# ��°� �ǹ�(������ �Ʒ� ��������)
# �Ʒ��� �ش�ġ ���
# 1�� ������
# �߾Ӱ�
# 3�������
# ���� �ش�ġ ���        #12-37 ���� �̿ܰ��� �̻�ġ

# Boxplor �н� end


# --------------------------------------
# ���ο� �۾� �� ���� �ʱ�ȭ �۾� 
rm(list=ls())  # �۾��� ��� ���� clear
ls()
objects()
# --------------------------------------


# -------------------------------------------------------------------
# ------- 2017_10_23 R ������ �м� �⺻�� ������
# -------------------------------------------------------------------
# ������ �м� ����
# ������ �ľǿ� �Լ� : head()  tail()  View()  dim()  str()  summary()

# ������ �ľ��ϱ�  
# �����͸� �ľ��� �� ����ϴ� �Լ��� ���
# �Լ�        ���
# head()      ������ �պκ� ��� 
# tail()      ������ �޺κ� ���
# View()      ���â���� ������ Ȯ��
# dim()       ������ ���� ���
# str()       ������ �Ӽ� ���
# summary()   ��� ��跮 ���

# ������ csv_exam.csv ������ �ҷ��´�.
exam <- read.csv("csv_exam.csv") # �ڷ��о����

data.frame(exam) # ������ ��ü���
head(exam) # �������� �Ϻθ� ��� 
head(exam, 10) # ������ �������� ��� ", ����" �����Ͽ� �Ϻ� ǥ�� ����
tail(exam) # ������ �޺κ� Ȯ���ϱ�
tail(exam, 5) # ������ �޺κ� ��, ���ϴ� �ٸ�ŭ Ȯ�� ����
View(exam) # ������ ������ â���� �ڷḦ ������
dim(exam) # ���� ��� ũ�� 
str(exam) # ������ �Ӽ� Ȯ��
summary(exam) #���� ��跮 ǥ��
# Min(�ּڰ�), 1st Qu(1������� ; ���� 25%������ ��ġ�ϴ� ��), Meadian(�߾���ġ��), Mean(��հ�), 
# 3rd Qu(���� 75%������ ��ġ�ϴ� ��), Max(�ִ�)

### ������ �м� ����
# 1�� �۾�(�ڷ�м�) : ������ �м��� ���� 1�� �۾��� ������ �ڷ��� �м�
#   �ڷᱸ���ľ�, ����ġ, �̻�(�������)ġ ���� �ľ�
#      - NA ����(ó����� : ����, ����, ��հ� ��ü ��)��)
#      - �̻�ġ : Boxplot ������� ������� �ľ�                  
#      - ������ Data ���� �̸� �ο�
# 2�� �۾� : �ʿ��� �ڷ� ����, �� �����۾�
# 3�� �۾� : �����м� - ����ȭ ����
# 4�� �۾� : �����м� - �ŷڼ� ��(���� �� ���ó��)
#   ������ - ���, �л�, ǥ������ ��
#   �߷���� - �������� : t����, F����, ����м� ��)


# Tip ------------------------------------------------
rm(list=ls())  # �۾��� ��� ���� clear
ls()
objects()
# Tip end --------------------------------------------

# mpg �������� ������ �ľ��� ���ô�. 
# qqplot2 �׷��� �ۼ� ��Ű���� ��ġ�ؾ� mpg �����͸� mpg ������ �ҷ��� �� �ִ�.

# qqplot2 �׷��� �ۼ� ��Ű���� Ȱ���� �⺻ ���� (�׷��� �ۼ��� ��Ű���� qqplot2 �ܿ��� �پ���)
# ��Ű�� ��ü���� �ڽ��� ����� �׽�Ʈ �غ� �� �ִ� �پ��� ���� �����Ͱ� �ֽ��ϴ�. 
# ��) mpg : qqplot2 ��Ű�� �ȿ� ������ �̱�ȯ�溸ȣ�� �����ڷ� (1999 ~ 2008 �Ⱓ�� �ڷ�)
# mpg : mile per gallon
# �� �Լ����� �������� ����� �����Ͽ� ����� �����ϴ� ���� �Ķ���Ͱ� �����Ѵ�.
# �Ķ���� ������ ������ ���鼭 qqplot2 ��Ű���� �Լ��� qplot()�� ���� ����� ü���غ���
# ?mpg : mpg �ڷ� ����

# �Լ��� ����� �ñ��� ��� "?�Լ���" ���� Ȯ���ϼ���.
?mpg  # ��� ����   hwy - �ڵ����� ���ӵ��ο��� 1������ �� ������ ������ ��Ÿ�� ����

# manufacturer ����ȸ��   model �ڵ��� �𵨸�
# displ ��ⷮ            year ����⵵
# cyl �Ǹ��� ����         trans ���ӱ� ����
# drv �������            cty ���ÿ���
# hwy ���ӵ��� ���       fl ����Ÿ��       class �ڵ��� ����
 
data.frame(mpg) # ������ ��ü���
head(mpg) # �������� �Ϻθ� ��� 
head(mpg, 10) # ������ �������� ��� ", ����" �����Ͽ� �Ϻ� ǥ�� ����
tail(mpg) # ������ �޺κ� Ȯ���ϱ�
tail(mpg, 5) # ������ �޺κ� ��, ���ϴ� �ٸ�ŭ Ȯ�� ����
View(mpg) # ������ ������ â���� �ڷḦ ������
dim(mpg) # ���� ��� ũ�� 
str(mpg) # ������ �Ӽ� Ȯ��
summary(mpg) #���� ��跮 ǥ��


# Tip --------------------------------------------------------------------------
# ��ü - 1�� 1���� �ڷ�, ��ü�� ���� - list  
# ��ü�� �ڷᱸ�� - 7����(��Į��, ����, ���, �迭, ����Ʈ, ����, ������������)
# list�� 7���� �ڷḦ ��� ������ �� �ִ�.
# http://blog.naver.com/sw4r/220947706818
# Tip end ----------------------------------------------------------------------

# �ڷḦ �ľ������� �ʿ��� �ڷ��� �̸��� ���� ����� �� �ִ� �̸�(����)���� ���� - ������ �ٲٱ�
# dplyr ��Ű��(�����͸� ���ϴ� ���·� �����ϴ� ��)�� rename()�� �̿��� �������� �ٲپ� ����

df_raw <- data.frame(var1 = c(1,2,1),       #��(colume)��ҷ� �迭
                     var2 = c(2,3,2))       # �ڵ����� 2��° ��(colume)��ҷ� �迭
df_raw


install.packages("dplyr")  # 1. dplyr ��Ű�� ��ġ �� Ȱ��ȭ
library(dplyr)

df_new <- df_raw   # ��� �ڷ�� ������ �����ϰ� ���纻�� ����� �����Ѵ�.
df_new                

df_new <- rename(df_new, v2=var2) # ���ڷ��� �����̸� ��, var2�� v2�� �����Ѵ�.
df_new

# ���� Ȯ���� ����
ls() ; objects()

df_new <- rename(df_new, v1=var1) # ���ڷ�(df_new)�� �����̸� ��, var1�� v1�� �����Ѵ�.
df_new

# ������ ���� ������ Ȱ���Ͽ� ����, ������ �� �Ļ������� ����� ���ô�.
# �� ��������, �������� �̿��ؼ� ������ ���ο� ��� �̶�� ���ο� ����, �� �Ļ������� ����� ���ô�.

df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df

df$var_sum <- df$var1 + df$var2 # df$var_sum - df������ ���ο� ���ο� ���� ����, $������ ������ ������
df

df$var_mean <- (df$var1 + df$var2)/2
df

# ------------------------------------------
# �ڷᰡ�� �������� �ٽ� mpg�� �ҷ��ͼ� cty, hwy ���ǿ� ���� ���� ������ ���� ������ ����� ���ô�.
mpg <- as.data.frame(ggplot2::mpg)

mpg$total <- (mpg$cty + mpg$hwy)/2 #  ���տ��� ����(total)�� ���λ���
mpg
head(mpg) # �ڷ� �� �κ� Ȯ��
str(mpg)  # �ڷḦ �����ϴ� �������� �Ӽ��� Ȯ��
summary(mpg) # �ڷ��� ��� ��෮

mean(mpg$total)

options(digits=4)
mean(mpg$total)

# ���ǿ� ���� ��ü�� �����ϴ� �Ļ����� �����
# mpg �ڷῡ�� ����ġ�� �߽����� ���� �м��Ͽ� �հ�, ���հ� �ο�

summary(mpg$total)  # total�� ���, �߾Ӱ� Ȯ��
hist(mpg$total) # �ڵ����� ���� �󵵼��� ���� Ȯ��  ��κ� 25�����̰� �̻��� ���� �ʴ�.

# total���� 20�� �ѱ�� �հ�, ���ϸ� ���հ����� �з��� �����Ļ������� ����� ����

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")  
#                 ����(��)         ���ս� �����ս� "" ��³���
head(mpg, 20)
table(mpg$test) # ���� �հ� ��ǥ ����
qplot(mpg$test)

# ��ø ���ǹ� Ȱ���ϱ�

# total�� 30�̻��̸� A, 20-29�� B, 20�̸��̸� C�� �з��� ����
mpg$grade <- ifelse(mpg$total >= 30, "A", 
                    ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)
table(mpg$grade)   # ��� ��ǥ ����
qplot(mpg$grade)

# ifelse()�� �� ��ø�ؼ� ���ϴ� ��ŭ ����ȭ 
mpg$grade2 <- ifelse(mpg$total >= 30, "A", 
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "C", "D")))
head(mpg, 20)
table(mpg$grade2)   # ��� ��ǥ ����
qplot(mpg$grade2)


mpg$grade3 <- ifelse(mpg$total >= 30, "��", 
                     ifelse(mpg$total >= 25, "��",
                            ifelse(mpg$total >= 20, "��", "��")))
head(mpg, 20)
table(mpg$grade3)   # ��� ��ǥ ����
qplot(mpg$grade3)



### ��������� Data �����ϱ�
# dplyr ��Ű���� ������ ��ó�� �۾��� ���� ���� Ȱ��Ǵ� ��Ű�� �Դϴ�.
# dplyr ��Ű�� ���� �Լ��� ������ ����� ������ �����ϴ�. 

# dplyr ��Ű���� �Լ�       ���
# filter()               �� ����
# select()               ��(����) ����
# arrange()              ����
# mutate()               �����߰�
# summarise()            ���ġ ����
# group_by()             ���ܺ��� ������
# left_join()            ������ ��ġ��(��)
# bind_rows()            ������ ��ġ��(��)


## ���ǿ� �´� ����Ÿ�� �����ϱ�
library(dplyr)  # �ռ� Ȱ��ȭ �����Ƿ� �Ѿ
exam <- read.csv("csv_exam.csv")
exam

# exam �������� class�� 1�� ��츸 �����ϱ�
exam %>%                # %>% : �Լ��� ���� ��. ��(��)�� ������ ������ 1���� ������ ����
  filter(class == 1)    # dplyr ��Ű���� filter �Լ� - ���� �����ϴ� �͸� ���

exam %>% 
  filter(class != 3)    # 3���� �ƴ� ���

exam %>% 
  filter(math >= 50)    # ������ 50�� �̻��� ���

exam %>% 
  filter(english <= 80)    # ��� 80�� ������ ���

# ������ ��� �����ϴ� �� �����ϱ�
exam %>% 
  filter(class == 1 & english >= 80)    # 1���̸鼭 ���ÿ� ��� 80�� �̻��� ���

exam %>% 
  filter(math >= 90 | english >= 95)    # ������ 90�̻� �Ǵ� ��� 95�� �̻��� ���

# %in% : ��ġ ������, matching operator, ������ ���� ���� ��Ͽ� �ش��ϴ��� Ȯ���ϴ� ���
# %>% ��ȣ�� c() �Լ��� �̿��� ���� ��� �Է��� ����

exam %>% 
  filter (class %in% c(1, 3, 5))  # 1, 3, 5�ݿ� �ش��ϸ� ����

# ������ ������ ������ �����

class1 <- exam %>% 
            filter(class == 1)  
class1
mean(class1$math)

class2 <- exam %>% 
            filter(class == 2)  
class2
mean(class2$english)
sd(class2$english)
var(class2$english)

# R ���� ����ϴ� ��ȣ��
# < �۴�, <= �۰ų� ����, > ũ��,  >= ũ�ų� ����, == ����, != ���� �ʴ�, | �Ǵ�,  & �׸���
# %in% ��Ī Ȯ��    ^, ** ����, / ������, %/% �������� ��,  %% �������� ������

# select() �����Ϳ� ��� �ִ� �� ���� ���� ��, �Ϻ� ������ ������ Ȱ���ϰ��� �� ��
exam %>%
  select(math) # ���и� ����

exam %>%
  select(class, math, english) # ��, ����, ���� ����

# ���� �����ϱ� : -������ ����
exam %>%
  select(-math) # ���и� �����ϰ� ����

# filter()�� select() ���� Ȱ���ϱ�
exam %>%
   filter(class == 1) %>% 
   select(math) # 1�� ���и� ����

exam %>%
   select(id, math) %>% 
   head # id, ���� ����

# ������� �����ϱ�
exam %>%
  arrange(math) # ���� �������� ���� 
  
exam %>%
  arrange(desc(math)) # ���� �������� ���� 


# �Ļ����� �߰��ϱ�  mutate()
exam %>%
  mutate(total = math + english + science) %>% 
  head

exam %>%
  mutate(average = (math + english + science)/3) %>% 
  head

exam %>%
  mutate(total = math + english + science,
         average = (math + english + science)/3) %>% 
  head

# mutate() �� ifelse() �����ϱ�
exam %>%
  mutate(test = ifelse(science >=60, "pass", "fail")) %>% 
  head

# �߰��� ������ �ٷ� Ȱ���ϱ�
exam %>%
  mutate(total = math + english + science) %>% 
  arrange(total) %>% 
  head



## ���ܺ��� ����ϱ� : summarise()
exam %>%
  summarise(mean_math = mean(math)) # ���� ��� ����


exam %>%
  group_by(class)   %>%               # �ݺ��� �и��ؼ� 
  summarise(mean_math = mean(math))   # ���� ��� ����


# ���� ��� ��跮 �ѹ��� �����ϱ�
exam %>%
  group_by(class)   %>%                    # �ݺ��� �и��ؼ� 
  summarise(mean_math = mean(math),        # MATH ���  
            sum_math = sum(math),          # math �հ�
            median_math = median(math),    # math �߾Ӱ�
            n = n())                       # ���� ��� ����       n() ��


mpg %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)
 
 
# dplyr �����ϱ�
# ���� : ȸ�纰�� "SUV" �ڵ����� ���� �� ���ӵ��� ���� ���� ����� ���� ������������ �����ϰ� 1-5������ ����ϱ�

# ����        ���                          dplyr �Լ�
#  1         ȸ�纰�� �и�                  group_by
#  2         suv ����                       filter()
#  3         ���� ��� ������ �߰� ����     mutate()
#  4         ���� ��� ��� ����            summarise()
#  5         �������� ����                  arrange()
#  6         1~5������ ���                 head()

mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)


# ������ ��ġ��

test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))
test1

test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 83, 65, 95, 80))
test2

total <- left_join(test1,test2, by = "id")
total 

# �ٸ� �����͸� Ȱ���� ���� �߰��ϱ�

name <- data.frame(class = c(1, 2, 3, 4, 5),
                    teacher = c("kim", "lee", "park", "choi", "jung"))
name

exam_new <- left_join(exam, name, by = "class")
exam_new

# ���η� ��ġ�� bind_rows

group_a <- data.frame(id = c(1,2,3,4,5),
                      test = c(60, 80, 70, 90, 85))
group_a


group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))
group_b


group_all <- bind_rows(group_a, group_b)
group_all


# -----------------------------------------------------------------------------------------------------
# �� ������ �м� ����
# ���ڷ��ľ� - ���纻 ���� - ����ġ(NA), �̻�ġ(����) ó�� - �ʿ亯�� ���� - �м� - �ŷڼ� ����
# ��� �������� �м��� ���ؼ��� Data�� ��������� ������ �� �־�� �Ѵ�.
# ��� �ڷ�� ������ �����ϰ� ���纻�� ����� ����(��ġ�ų�, �����ϰų�, ���� ��)�Ѵ�.



# ������ ���� ���� : dplyr ��Ű��(�����͸� ���ϴ� ���·� �����ϴ� ��)

install.packages("dplyr")  # 1. dplyr ��Ű�� ��ġ �� Ȱ��ȭ
library(dplyr)

# dplyr ��Ű�� : a grammar of data manipulation  dplyr, ��  "%>%" (dplyr�� ����Լ�) 
  # "%>%" - ctrl + shift + M ���� Ŭ�� - �Լ����� �����ϴ� ��� - ������ ������ - 1�������� ����
# dplyr�� ����Լ�  
  # ������ : filter(), ��(����)���� : select(), ���� : arrange(), �����߰� : mutate(),  
  # ���ġ���� : summarise(), ���ܺ��� ������ : group_by(), ��������ġ��(��) : left_join(), 
  # ��������ġ��(��) : bind_rows()

exam <- read.csv("csv_exam.csv")
exam
# -----------------------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------------------
# ������ ���� :  ���� ������(����ġ) NA,  �̻��� ������(�̻�ġ) �����ϱ�
# ���� ������(����ġ) = ������ �� = ����ִ� ��  --> �Լ��� ������� �ʰų�  �ְ�� �߻�
# ���ڷ� ������ ���� �� ����ġ��  <NA> ���·� ��µ� 

df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5,4,3,4,NA))
df

# ����ġ Ȯ�� is.na()
is.na(df)
table(is.na(df))  # ����ġ �󵵼� ���
is.na(df$sex)
table(is.na(df$sex))
table(is.na(df$score))
is.na(df$score)
# ����ġ ���Ե� �ڷḦ �Լ��� �����ϸ� error �߻� NA
mean(df$score)
sum(df$score)

# ����ġ �����ϱ�  filter(is.na())
library(dplyr)
df %>%  filter(is.na(score))  # score�� NA�� ������ ���

# ����ġ�� �����ϰ� ���� ����
df %>%  filter(!is.na(score))  # score�� NA�� ������ ���
df_nomiss <- df %>%  filter(!is.na(score))
df_nomiss
mean(df_nomiss$score)
sum(df_nomiss$score)

# ���� ���� ���ÿ� ����ġ ���� ������ �����ϱ�
df_nomiss <- df %>%  filter(!is.na(score) & !is.na(sex))
df_nomiss

# ����ġ�� �ϳ��� ������ �����ϱ�
# na.omit()  ������ �������� �ʰ� ����ġ���� ������ ����
df_nomiss2 <- na.omit(df)
df_nomiss2

# �Լ��� ����ġ ���� ��� Ȱ���ϱ� 
mean(df$score, na.rm = T)   # ����ġ ������ ��հ� ����
sum(df$score, na.rm = T)   # ����ġ ������ �հ� ����


exam <- read.csv("csv_exam.csv")
exam

exam[c(3,8,15), "math"] <- NA  # 3, 8, 15 ���� math�� NA �Ҵ�
# ���ȣ [ ] ; �������� ��ġ�� ���� []���� ��ǥ ������ '��'��ġ, �������� '��'��ġ
# math ���� 3, 8, 15�࿡�� NA �Ҵ�
exam
exam7 <- exam
exam7 %>% summarise(mean_math = mean(math))
# ����ȵ�. NA  Not available
# �׷���

exam7 %>% summarise(mean_math = mean(math, na.rm=T))
# ����

exam7 %>% summarise(mean_math = mean(math, na.rm=T),
                   sum_math = sum(math, na.rm=T),
                   median_math = median(math, na.rm=T))


# ��հ����� ����ġ ��ü�ϱ�
mean(exam$math, na.rm = T)  # ����ġ �����ϰ� math ��� ����

# ifelse()�� �̿��ؼ�NA���� ���������� ��հ����� ��ü
exam7$math <- ifelse(is.na(exam7$math), 55, exam7$math)  # math�� NA�̸� 55�� ��ü 
table(is.na(exam7$math))
exam7

mean(exam7$math)


## �̻�ġ(outlier) �����ϱ�
  # �̻�ġ = ������ֿ��� ũ�� ��� ��   ������ �� ���� ��

  # �̻�ġ�� ���Ե� �ڷ� ����
  # sex ���� ���� 1,2   score ���� 1-5�� ����

outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))
outlier
# �̻�ġ�� sex�� 3, score�� 6

table(outlier$sex) # table�� �̿��� �󵵼� ���� ; 3�� 1�� ����
table(outlier$score) # table�� �̿��� �󵵼� ���� ; 6�� 1�� 

# �̻�ġ�� ����ġ�� ó��   ifelse()  NA
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier

outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier

# ��������ġ�� �����ϰ� �м��ϸ�ȴ�. 
# filter() �̿��ؼ� ����ġ�� ������ �� ������ ���� score ����� ���غ���

outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>%   # ������ �ڷ� ����
  group_by(sex) %>%                         # ������ �з�     
  summarise(mean_score = mean(score))       # �� ������ ��հ� ���� 















# ---------------------
# ���� ���������� �м�  -  ������ �м� ������Ʈ           11�� 13�� ����
# ---------------------

## ������ ������ ���� ���
   # ���������� ���� www.data.go.kr
   # ���� ���������� ���� http://data.seoul.go.kr
   # ������������ ���¸��� http://market.nsdi.go.kr/
   # ���������г� http://koweps.re.kr
   
# �ѱ����� ���� �ľ��϶�, �ѱ������гε����� ��� �м� 
# �ѱ������гε����� �м�

# �⺻�ڷ� ����� bit.ly/doit_rb  ���� �Ǵ� ���� https://github.com/youngwoos/Doit_R/#91  �Է�
# 2016�⿡ �߰��� �����гε����� 6,914����  16,664���� ���� ������ ��� ����.

# ���� �Ʒ��� ����Ǵ� ���� ��.
# ������ �غ� bit.ly/doit_rb ;<https://github.com/youngwoos/Doit_R/#91>
# �ٿ�ε� koweps_hpc10_2015_beta1.sav �ٿ���� : 2016�� �߰��� ���� �гε�����(6914����, 16664������)
# https://www.koweps.re.kr �ѱ������г� ȸ������ ��, https://www.koweps.re.kr:442/data/data/list.do
# ID : gpsgis   PW : gnssuav7
# 
# ��� sw�� SPSS, SAS, STATA�� ���� ������ �ҷ��� �� �ִ� ��� : ��Ű�� foreign ��ġ
install.packages("foreign")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("readxl")

library(foreign) # SPSS ���� �ҷ�����
library(dplyr) # ��ó��
library(ggplot2) # �ð�ȭ
library(readxl) # �������� �ҷ�����

# ������ �ҷ�����
raw_welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)
raw_welfare 
# ���纻 �����
welfare <- raw_welfare

# ������ �����ϱ�
View(welfare)

head(welfare)

tail(welfare)

dim(welfare)

str(welfare)

summary(welfare)

# ������ �ٲٱ�
welfare <- rename(welfare,
                  sex = h10_g3,              # ����
                  birth = h10_g4,            # �¾ �⵵
                  marriage = h10_g10,        # ȥ�� ����  
                  religion = h10_g11,        # ����
                  income = p1002_8aq1,       # ����  
                  code_job = h10_eco9,       # ���� �ڵ�  
                  code_region = h10_reg7)    # ���� �ڵ�

# ������ �м�����
# 1�ܰ� : ���� ���� �� ��ó�� (����ġ ����, �̻�ġ ����)
# 2�ܰ� : ������ ����м� (���ǥ�����, �׷��� �����)

# ���� �����ϱ�
class(welfare$sex)

table(welfare$sex) # 1(��)-7578��, 2(��)-9086��

# sex�� 1, 2 �̿��� ���� �̻�ġ,  9(��/������) 
# �̻�ġ ���� ó��
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex)

# ����ġ Ȯ��
table(is.na(welfare$sex))
# Ȯ�ΰ�� ����ġ�� ���� �̻����

# sex ������ ���� ���� 1�� 2�� �Ǿ� ����, �̰��� ���������� "male", "female"�� �ٲٰ�
# table(), qplot()�� �̿��� �ݿ������ Ȯ���Ѵ�.
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")

table(welfare$sex)

qplot(welfare$sex) # ���� ��ó�� �۾� �Ϸ�

# ------------------------------------------------------------------------------
### ��. ������ ���� ���� ����  ------- ������ ���� ������ �ٸ��� ?  ------------
# �м�����
  # �������� �� ��ó��(����, ����) 
  # ������ ����м�(���� ���� ���ǥ �����, �׷��� �����)

# �������� ���޺����� ��ó�� �۾��� �����Ѵ�.
# 1. ���޺��� ���� �� ��ó�� : ���ش��� 1����
class(welfare$income)

summary(welfare$income)

qplot(welfare$income)

# qplot() : �ִ񰪱��� ǥ����, 0-1000������ ǥ���ǰ� �����غ���
qplot(welfare$income) + xlim(0,1000)

# 2. ��ó��
# ������ 1-9998 ���̰�, �� �Ǵ� �������� 9999�� �ڵ��� ���·� ����Ǿ� ����
# �̻�ġ Ȯ���� ����

summary(welfare$income)
# ����ġ�� 12030�� ����, �ּڰ��� 0�� ������ , ���� ���� 0 �Ǵ� 9999�� ��� ����ó�� �غ���

# �̻�ġ ����ó��
welfare$income <- ifelse(welfare$income %in% c(0,9999), NA, welfare$income)

# �ٽ� ����ġ Ȯ��
table(is.na(welfare$income))

# ���� ���� ���ǥ �����
sex_income <- welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(mean_income = mean(income))

sex_income

ggplot(data=sex_income, aes(x = sex, y= mean_income)) + geom_col()


# ----------------------------------------------------------------------

## ��. ������ ���ɴ� ���� - ������� ���� ������ ����ϱ�� ?

# ���� ���� �� ��ó��(����, ��ɴ�) - ������ ����м�(������ ���ɴ� ����ǥ �����, �׷��������)
# ���� ���� ���� �� �� ó��
# 1. ���� �����ϱ�
class(welfare$code_region)

table(welfare$code_region)

# 2. ��ó��
# code_region ( 1 ����,  2 ������(��õ/���), 3 �λ�/�泲/���, 4 �뱸/���, 5 ����/�泲
#               6 ����/���,  7 ����/����/����/���ֵ�)

# ���� �ڵ� ��� �����
list_region <- data.frame(code_region = c(1:7),
                          region = c("����",
                                     "������(��õ/���)",
                                     "�λ�/�泲/���",
                                     "�뱸/���",
                                     "����/�泲",
                                     "����/���",
                                     "����/����/����/���ֵ�"))

list_region

# ������ ���� �߰�
welfare <- left_join(welfare, list_region, id= "code_region")

welfare %>% 
  select(code_region, region) %>% 
  head

# ������ ��ɴ� ���� �м��ϱ�
# ������ ��ɴ� ����ǥ �����
region_ageg <- welfare %>% 
  group_by(region, ageg) %>% 
  summarise(n=n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n/tot_group*100, 2))

head(region_ageg)

# �׷��� �����
ggplot(data=region_ageg, aes(x=region, y= pct, fill = ageg)) + 
  geom_col() +
  coord_flip()

# ����� ���� �������� �����
list_order_old <- region_ageg %>% 
  filter(ageg == "old") %>% 
  arrange(pct)

list_order_old

# ������ ���� ���� �����
order <- list_order_old$region

order

ggplot(data=region_ageg, aes(x=region, y= pct, fill = ageg)) + 
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)

# ��ɴ� ������ ���� ���� �����ϱ�
class(region_ageg$ageg)

levels(region_ageg$ageg)

# factor()�� �̿��ؼ� ageg ������ factor Ÿ������ ��ȯ�ϰ� level �Ķ���͸� �̿��� ������ ���Ѵ�.
region_ageg$ageg <- factor(region_ageg$ageg,
                           level = c("old", "middle", "young"))

class(region_ageg$ageg)

levels(region_ageg$ageg)

ggplot(data=region_ageg, aes(x=region, y= pct, fill = ageg)) + 
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)

