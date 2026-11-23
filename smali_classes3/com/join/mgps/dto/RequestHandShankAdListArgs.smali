.class public Lcom/join/mgps/dto/RequestHandShankAdListArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private message_id:I

.field private message_type:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "msg_id",
            "msg_type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->uid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->message_id:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->message_type:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getMessage_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->message_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->message_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setMessage_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->message_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setMessage_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->message_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestHandShankAdListArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method
