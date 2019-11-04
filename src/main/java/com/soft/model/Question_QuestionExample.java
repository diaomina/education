package com.soft.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Question_QuestionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public Question_QuestionExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCouserIdIsNull() {
            addCriterion("Couser_id is null");
            return (Criteria) this;
        }

        public Criteria andCouserIdIsNotNull() {
            addCriterion("Couser_id is not null");
            return (Criteria) this;
        }

        public Criteria andCouserIdEqualTo(Integer value) {
            addCriterion("Couser_id =", value, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdNotEqualTo(Integer value) {
            addCriterion("Couser_id <>", value, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdGreaterThan(Integer value) {
            addCriterion("Couser_id >", value, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("Couser_id >=", value, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdLessThan(Integer value) {
            addCriterion("Couser_id <", value, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdLessThanOrEqualTo(Integer value) {
            addCriterion("Couser_id <=", value, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdIn(List<Integer> values) {
            addCriterion("Couser_id in", values, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdNotIn(List<Integer> values) {
            addCriterion("Couser_id not in", values, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdBetween(Integer value1, Integer value2) {
            addCriterion("Couser_id between", value1, value2, "couserId");
            return (Criteria) this;
        }

        public Criteria andCouserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("Couser_id not between", value1, value2, "couserId");
            return (Criteria) this;
        }

        public Criteria andQuestionContentIsNull() {
            addCriterion("Question_content is null");
            return (Criteria) this;
        }

        public Criteria andQuestionContentIsNotNull() {
            addCriterion("Question_content is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionContentEqualTo(String value) {
            addCriterion("Question_content =", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentNotEqualTo(String value) {
            addCriterion("Question_content <>", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentGreaterThan(String value) {
            addCriterion("Question_content >", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentGreaterThanOrEqualTo(String value) {
            addCriterion("Question_content >=", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentLessThan(String value) {
            addCriterion("Question_content <", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentLessThanOrEqualTo(String value) {
            addCriterion("Question_content <=", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentLike(String value) {
            addCriterion("Question_content like", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentNotLike(String value) {
            addCriterion("Question_content not like", value, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentIn(List<String> values) {
            addCriterion("Question_content in", values, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentNotIn(List<String> values) {
            addCriterion("Question_content not in", values, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentBetween(String value1, String value2) {
            addCriterion("Question_content between", value1, value2, "questionContent");
            return (Criteria) this;
        }

        public Criteria andQuestionContentNotBetween(String value1, String value2) {
            addCriterion("Question_content not between", value1, value2, "questionContent");
            return (Criteria) this;
        }

        public Criteria andPictureUrlIsNull() {
            addCriterion("Picture_url is null");
            return (Criteria) this;
        }

        public Criteria andPictureUrlIsNotNull() {
            addCriterion("Picture_url is not null");
            return (Criteria) this;
        }

        public Criteria andPictureUrlEqualTo(String value) {
            addCriterion("Picture_url =", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlNotEqualTo(String value) {
            addCriterion("Picture_url <>", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlGreaterThan(String value) {
            addCriterion("Picture_url >", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlGreaterThanOrEqualTo(String value) {
            addCriterion("Picture_url >=", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlLessThan(String value) {
            addCriterion("Picture_url <", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlLessThanOrEqualTo(String value) {
            addCriterion("Picture_url <=", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlLike(String value) {
            addCriterion("Picture_url like", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlNotLike(String value) {
            addCriterion("Picture_url not like", value, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlIn(List<String> values) {
            addCriterion("Picture_url in", values, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlNotIn(List<String> values) {
            addCriterion("Picture_url not in", values, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlBetween(String value1, String value2) {
            addCriterion("Picture_url between", value1, value2, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andPictureUrlNotBetween(String value1, String value2) {
            addCriterion("Picture_url not between", value1, value2, "pictureUrl");
            return (Criteria) this;
        }

        public Criteria andOptionAIsNull() {
            addCriterion("Option_a is null");
            return (Criteria) this;
        }

        public Criteria andOptionAIsNotNull() {
            addCriterion("Option_a is not null");
            return (Criteria) this;
        }

        public Criteria andOptionAEqualTo(String value) {
            addCriterion("Option_a =", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionANotEqualTo(String value) {
            addCriterion("Option_a <>", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionAGreaterThan(String value) {
            addCriterion("Option_a >", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionAGreaterThanOrEqualTo(String value) {
            addCriterion("Option_a >=", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionALessThan(String value) {
            addCriterion("Option_a <", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionALessThanOrEqualTo(String value) {
            addCriterion("Option_a <=", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionALike(String value) {
            addCriterion("Option_a like", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionANotLike(String value) {
            addCriterion("Option_a not like", value, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionAIn(List<String> values) {
            addCriterion("Option_a in", values, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionANotIn(List<String> values) {
            addCriterion("Option_a not in", values, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionABetween(String value1, String value2) {
            addCriterion("Option_a between", value1, value2, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionANotBetween(String value1, String value2) {
            addCriterion("Option_a not between", value1, value2, "optionA");
            return (Criteria) this;
        }

        public Criteria andOptionBIsNull() {
            addCriterion("Option_b is null");
            return (Criteria) this;
        }

        public Criteria andOptionBIsNotNull() {
            addCriterion("Option_b is not null");
            return (Criteria) this;
        }

        public Criteria andOptionBEqualTo(String value) {
            addCriterion("Option_b =", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBNotEqualTo(String value) {
            addCriterion("Option_b <>", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBGreaterThan(String value) {
            addCriterion("Option_b >", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBGreaterThanOrEqualTo(String value) {
            addCriterion("Option_b >=", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBLessThan(String value) {
            addCriterion("Option_b <", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBLessThanOrEqualTo(String value) {
            addCriterion("Option_b <=", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBLike(String value) {
            addCriterion("Option_b like", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBNotLike(String value) {
            addCriterion("Option_b not like", value, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBIn(List<String> values) {
            addCriterion("Option_b in", values, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBNotIn(List<String> values) {
            addCriterion("Option_b not in", values, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBBetween(String value1, String value2) {
            addCriterion("Option_b between", value1, value2, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionBNotBetween(String value1, String value2) {
            addCriterion("Option_b not between", value1, value2, "optionB");
            return (Criteria) this;
        }

        public Criteria andOptionCIsNull() {
            addCriterion("Option_c is null");
            return (Criteria) this;
        }

        public Criteria andOptionCIsNotNull() {
            addCriterion("Option_c is not null");
            return (Criteria) this;
        }

        public Criteria andOptionCEqualTo(String value) {
            addCriterion("Option_c =", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCNotEqualTo(String value) {
            addCriterion("Option_c <>", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCGreaterThan(String value) {
            addCriterion("Option_c >", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCGreaterThanOrEqualTo(String value) {
            addCriterion("Option_c >=", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCLessThan(String value) {
            addCriterion("Option_c <", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCLessThanOrEqualTo(String value) {
            addCriterion("Option_c <=", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCLike(String value) {
            addCriterion("Option_c like", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCNotLike(String value) {
            addCriterion("Option_c not like", value, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCIn(List<String> values) {
            addCriterion("Option_c in", values, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCNotIn(List<String> values) {
            addCriterion("Option_c not in", values, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCBetween(String value1, String value2) {
            addCriterion("Option_c between", value1, value2, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionCNotBetween(String value1, String value2) {
            addCriterion("Option_c not between", value1, value2, "optionC");
            return (Criteria) this;
        }

        public Criteria andOptionDIsNull() {
            addCriterion("Option_d is null");
            return (Criteria) this;
        }

        public Criteria andOptionDIsNotNull() {
            addCriterion("Option_d is not null");
            return (Criteria) this;
        }

        public Criteria andOptionDEqualTo(String value) {
            addCriterion("Option_d =", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDNotEqualTo(String value) {
            addCriterion("Option_d <>", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDGreaterThan(String value) {
            addCriterion("Option_d >", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDGreaterThanOrEqualTo(String value) {
            addCriterion("Option_d >=", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDLessThan(String value) {
            addCriterion("Option_d <", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDLessThanOrEqualTo(String value) {
            addCriterion("Option_d <=", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDLike(String value) {
            addCriterion("Option_d like", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDNotLike(String value) {
            addCriterion("Option_d not like", value, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDIn(List<String> values) {
            addCriterion("Option_d in", values, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDNotIn(List<String> values) {
            addCriterion("Option_d not in", values, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDBetween(String value1, String value2) {
            addCriterion("Option_d between", value1, value2, "optionD");
            return (Criteria) this;
        }

        public Criteria andOptionDNotBetween(String value1, String value2) {
            addCriterion("Option_d not between", value1, value2, "optionD");
            return (Criteria) this;
        }

        public Criteria andAnswerIsNull() {
            addCriterion("Answer is null");
            return (Criteria) this;
        }

        public Criteria andAnswerIsNotNull() {
            addCriterion("Answer is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerEqualTo(String value) {
            addCriterion("Answer =", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotEqualTo(String value) {
            addCriterion("Answer <>", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerGreaterThan(String value) {
            addCriterion("Answer >", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerGreaterThanOrEqualTo(String value) {
            addCriterion("Answer >=", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerLessThan(String value) {
            addCriterion("Answer <", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerLessThanOrEqualTo(String value) {
            addCriterion("Answer <=", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerLike(String value) {
            addCriterion("Answer like", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotLike(String value) {
            addCriterion("Answer not like", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerIn(List<String> values) {
            addCriterion("Answer in", values, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotIn(List<String> values) {
            addCriterion("Answer not in", values, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerBetween(String value1, String value2) {
            addCriterion("Answer between", value1, value2, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotBetween(String value1, String value2) {
            addCriterion("Answer not between", value1, value2, "answer");
            return (Criteria) this;
        }

        public Criteria andScoreIsNull() {
            addCriterion("Score is null");
            return (Criteria) this;
        }

        public Criteria andScoreIsNotNull() {
            addCriterion("Score is not null");
            return (Criteria) this;
        }

        public Criteria andScoreEqualTo(Double value) {
            addCriterion("Score =", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotEqualTo(Double value) {
            addCriterion("Score <>", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreGreaterThan(Double value) {
            addCriterion("Score >", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreGreaterThanOrEqualTo(Double value) {
            addCriterion("Score >=", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLessThan(Double value) {
            addCriterion("Score <", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLessThanOrEqualTo(Double value) {
            addCriterion("Score <=", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreIn(List<Double> values) {
            addCriterion("Score in", values, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotIn(List<Double> values) {
            addCriterion("Score not in", values, "score");
            return (Criteria) this;
        }

        public Criteria andScoreBetween(Double value1, Double value2) {
            addCriterion("Score between", value1, value2, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotBetween(Double value1, Double value2) {
            addCriterion("Score not between", value1, value2, "score");
            return (Criteria) this;
        }

        public Criteria andCorpIdIsNull() {
            addCriterion("Corp_id is null");
            return (Criteria) this;
        }

        public Criteria andCorpIdIsNotNull() {
            addCriterion("Corp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCorpIdEqualTo(Integer value) {
            addCriterion("Corp_id =", value, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdNotEqualTo(Integer value) {
            addCriterion("Corp_id <>", value, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdGreaterThan(Integer value) {
            addCriterion("Corp_id >", value, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("Corp_id >=", value, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdLessThan(Integer value) {
            addCriterion("Corp_id <", value, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdLessThanOrEqualTo(Integer value) {
            addCriterion("Corp_id <=", value, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdIn(List<Integer> values) {
            addCriterion("Corp_id in", values, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdNotIn(List<Integer> values) {
            addCriterion("Corp_id not in", values, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdBetween(Integer value1, Integer value2) {
            addCriterion("Corp_id between", value1, value2, "corpId");
            return (Criteria) this;
        }

        public Criteria andCorpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("Corp_id not between", value1, value2, "corpId");
            return (Criteria) this;
        }

        public Criteria andCreateByIsNull() {
            addCriterion("Create_by is null");
            return (Criteria) this;
        }

        public Criteria andCreateByIsNotNull() {
            addCriterion("Create_by is not null");
            return (Criteria) this;
        }

        public Criteria andCreateByEqualTo(String value) {
            addCriterion("Create_by =", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotEqualTo(String value) {
            addCriterion("Create_by <>", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByGreaterThan(String value) {
            addCriterion("Create_by >", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByGreaterThanOrEqualTo(String value) {
            addCriterion("Create_by >=", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByLessThan(String value) {
            addCriterion("Create_by <", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByLessThanOrEqualTo(String value) {
            addCriterion("Create_by <=", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByLike(String value) {
            addCriterion("Create_by like", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotLike(String value) {
            addCriterion("Create_by not like", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByIn(List<String> values) {
            addCriterion("Create_by in", values, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotIn(List<String> values) {
            addCriterion("Create_by not in", values, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByBetween(String value1, String value2) {
            addCriterion("Create_by between", value1, value2, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotBetween(String value1, String value2) {
            addCriterion("Create_by not between", value1, value2, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("Create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("Create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("Create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("Create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("Create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("Create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("Create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("Create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("Create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("Create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("Create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("Create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andModifyByIsNull() {
            addCriterion("Modify_by is null");
            return (Criteria) this;
        }

        public Criteria andModifyByIsNotNull() {
            addCriterion("Modify_by is not null");
            return (Criteria) this;
        }

        public Criteria andModifyByEqualTo(String value) {
            addCriterion("Modify_by =", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByNotEqualTo(String value) {
            addCriterion("Modify_by <>", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByGreaterThan(String value) {
            addCriterion("Modify_by >", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByGreaterThanOrEqualTo(String value) {
            addCriterion("Modify_by >=", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByLessThan(String value) {
            addCriterion("Modify_by <", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByLessThanOrEqualTo(String value) {
            addCriterion("Modify_by <=", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByLike(String value) {
            addCriterion("Modify_by like", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByNotLike(String value) {
            addCriterion("Modify_by not like", value, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByIn(List<String> values) {
            addCriterion("Modify_by in", values, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByNotIn(List<String> values) {
            addCriterion("Modify_by not in", values, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByBetween(String value1, String value2) {
            addCriterion("Modify_by between", value1, value2, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyByNotBetween(String value1, String value2) {
            addCriterion("Modify_by not between", value1, value2, "modifyBy");
            return (Criteria) this;
        }

        public Criteria andModifyTimeIsNull() {
            addCriterion("Modify_time is null");
            return (Criteria) this;
        }

        public Criteria andModifyTimeIsNotNull() {
            addCriterion("Modify_time is not null");
            return (Criteria) this;
        }

        public Criteria andModifyTimeEqualTo(Date value) {
            addCriterion("Modify_time =", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeNotEqualTo(Date value) {
            addCriterion("Modify_time <>", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeGreaterThan(Date value) {
            addCriterion("Modify_time >", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("Modify_time >=", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeLessThan(Date value) {
            addCriterion("Modify_time <", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeLessThanOrEqualTo(Date value) {
            addCriterion("Modify_time <=", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeIn(List<Date> values) {
            addCriterion("Modify_time in", values, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeNotIn(List<Date> values) {
            addCriterion("Modify_time not in", values, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeBetween(Date value1, Date value2) {
            addCriterion("Modify_time between", value1, value2, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeNotBetween(Date value1, Date value2) {
            addCriterion("Modify_time not between", value1, value2, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("Status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("Status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Boolean value) {
            addCriterion("Status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Boolean value) {
            addCriterion("Status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Boolean value) {
            addCriterion("Status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Boolean value) {
            addCriterion("Status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Boolean value) {
            addCriterion("Status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Boolean value) {
            addCriterion("Status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Boolean> values) {
            addCriterion("Status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Boolean> values) {
            addCriterion("Status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Boolean value1, Boolean value2) {
            addCriterion("Status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Boolean value1, Boolean value2) {
            addCriterion("Status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andVersionIsNull() {
            addCriterion("Version is null");
            return (Criteria) this;
        }

        public Criteria andVersionIsNotNull() {
            addCriterion("Version is not null");
            return (Criteria) this;
        }

        public Criteria andVersionEqualTo(Integer value) {
            addCriterion("Version =", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotEqualTo(Integer value) {
            addCriterion("Version <>", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionGreaterThan(Integer value) {
            addCriterion("Version >", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionGreaterThanOrEqualTo(Integer value) {
            addCriterion("Version >=", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionLessThan(Integer value) {
            addCriterion("Version <", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionLessThanOrEqualTo(Integer value) {
            addCriterion("Version <=", value, "version");
            return (Criteria) this;
        }

        public Criteria andVersionIn(List<Integer> values) {
            addCriterion("Version in", values, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotIn(List<Integer> values) {
            addCriterion("Version not in", values, "version");
            return (Criteria) this;
        }

        public Criteria andVersionBetween(Integer value1, Integer value2) {
            addCriterion("Version between", value1, value2, "version");
            return (Criteria) this;
        }

        public Criteria andVersionNotBetween(Integer value1, Integer value2) {
            addCriterion("Version not between", value1, value2, "version");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdIsNull() {
            addCriterion("Question_type_id is null");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdIsNotNull() {
            addCriterion("Question_type_id is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdEqualTo(Integer value) {
            addCriterion("Question_type_id =", value, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdNotEqualTo(Integer value) {
            addCriterion("Question_type_id <>", value, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdGreaterThan(Integer value) {
            addCriterion("Question_type_id >", value, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("Question_type_id >=", value, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdLessThan(Integer value) {
            addCriterion("Question_type_id <", value, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdLessThanOrEqualTo(Integer value) {
            addCriterion("Question_type_id <=", value, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdIn(List<Integer> values) {
            addCriterion("Question_type_id in", values, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdNotIn(List<Integer> values) {
            addCriterion("Question_type_id not in", values, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdBetween(Integer value1, Integer value2) {
            addCriterion("Question_type_id between", value1, value2, "questionTypeId");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("Question_type_id not between", value1, value2, "questionTypeId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}