library(ISLR)
glm.fit <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data=Smarket,family = binomial)
summary(glm.fit)
glm.pred <- predict(glm.fit, type='response')
glm.pred[1:5]
glm.pred2 <- ifelse(glm.pred>0.5 ,"Up","Down")
attach(Smarket)
table(glm.pred2,Direction)
