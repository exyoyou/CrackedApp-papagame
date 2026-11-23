.class Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->z(Landroid/view/View;ZZIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;IZZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$cid",
            "val$showDelete",
            "val$showReport",
            "val$rid",
            "val$nickname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->b:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->d:Z

    .line 8
    .line 9
    iput p5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->e:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->d(Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->b:I

    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;->g(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->g:Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    iget-boolean v5, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->c:Z

    .line 24
    .line 25
    iget-boolean v6, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->d:Z

    .line 26
    .line 27
    iget v7, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->b:I

    .line 28
    .line 29
    iget v8, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->e:I

    .line 30
    .line 31
    iget-object v9, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$d;->f:Ljava/lang/String;

    .line 32
    .line 33
    move-object v3, p1

    .line 34
    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter;->D(Landroid/view/View;IZZIILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1
.end method
