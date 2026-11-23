.class public Ll/a;
.super Lcom/aliyun/odps/udf/UDF;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/odps/udf/UDF;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ll/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ll/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x7b

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ll/a$a;->c(I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "xxx"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ll/a$a;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Ll/a$a;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v0, "ok"

    .line 26
    .line 27
    return-object v0
.end method
