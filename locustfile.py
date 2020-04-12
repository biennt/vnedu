from locust import HttpLocust, TaskSet, task

class UserBehavior(TaskSet):

    @task(1)
    def s2011(self):
        self.client.get("/")
    @task(2)
    def s2012(self):
        self.client.get("/service/khoiHoc/getListForFrontend")



class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait = 5000
    max_wait = 9000

