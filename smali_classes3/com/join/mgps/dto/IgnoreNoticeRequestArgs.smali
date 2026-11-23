.class public Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private message_id:I

.field private message_type:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

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
            "message_id",
            "message_type"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->uid:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_id:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->uid:I

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
    iput p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_id:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->message_type:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method
