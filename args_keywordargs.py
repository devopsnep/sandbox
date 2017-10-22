'''
    using arguments,multiple arguments and keyword arguments in python functions
'''
#!/usr/bin/python3
def main():
    combinedFunc(22,43,55,"jack",78,37,lname="sherpa",fname="orange",address="kathmandu")

def combinedFunc(a,b,c, *args, **kwargs):
    print("individual args: ",a,b,c)
    print("list args: ",args)
    print("keyword args: ",kwargs)

if __name__ == "__main__": main()
