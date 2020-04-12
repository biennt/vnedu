from locust import HttpLocust, TaskSet, task, between

class UserBehavior(TaskSet):

    @task(1)
    def s2011(self):
        self.client.get("/")
    @task(2)
    def s2012(self):
        self.client.get("/service/khoiHoc/getListForFrontend")



class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    wait_time = between(5, 9)

