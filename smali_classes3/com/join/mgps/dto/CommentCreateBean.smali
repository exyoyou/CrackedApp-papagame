.class public Lcom/join/mgps/dto/CommentCreateBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentCreateBean$InfoBean;
    }
.end annotation


# instance fields
.field private info:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentCreateBean;->info:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setInfo(Lcom/join/mgps/dto/CommentCreateBean$InfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentCreateBean;->info:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 2
    .line 3
    return-void
.end method
