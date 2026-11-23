.class Lcom/join/mgps/callbacks/u$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/callbacks/u;->shareToOne(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/callbacks/u;


# direct methods
.method constructor <init>(Lcom/join/mgps/callbacks/u;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$json",
            "val$shareTo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/callbacks/u$k;->d:Lcom/join/mgps/callbacks/u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/callbacks/u$k;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/callbacks/u$k;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/callbacks/u$k;->b:Ljava/lang/String;

    .line 6
    .line 7
    const-class v2, Lcom/join/mgps/dto/ShareBean;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/dto/ShareBean;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/callbacks/u$k;->d:Lcom/join/mgps/callbacks/u;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/callbacks/u;->c(Lcom/join/mgps/callbacks/u;)Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/Context;

    .line 30
    .line 31
    iget v2, p0, Lcom/join/mgps/callbacks/u$k;->c:I

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/w;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
