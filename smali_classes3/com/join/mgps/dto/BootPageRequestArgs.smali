.class public Lcom/join/mgps/dto/BootPageRequestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private phone_model:Ljava/lang/String;

.field private phone_producer:Ljava/lang/String;

.field private phone_system:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "phone_model",
            "phone_system",
            "phone_producer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_model:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_system:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_producer:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getPhone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhone_producer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_producer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhone_system()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_system:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPhone_model(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone_model"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPhone_producer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone_producer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_producer:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPhone_system(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone_system"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BootPageRequestArgs;->phone_system:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
