.class Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->g(Landroid/view/View;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid",
            "val$cid",
            "val$rid",
            "val$fromNickName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->c:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->f:Lcom/join/mgps/adapter/ForumProfileMessageAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->a(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->b:I

    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->c:I

    .line 18
    .line 19
    iget v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->d:I

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;->a(IIILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
