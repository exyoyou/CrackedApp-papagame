.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->A(Landroid/view/View;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$cid",
            "val$rid",
            "val$rNickname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->e:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->b:I

    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->c:I

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$b;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->c(IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
