.class Lcom/join/mgps/adapter/ForumTMemberAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumTMemberAdapter;->k(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/ForumTMemberAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;->c:Lcom/join/mgps/adapter/ForumTMemberAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;->c:Lcom/join/mgps/adapter/ForumTMemberAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b(Lcom/join/mgps/adapter/ForumTMemberAdapter;)Lcom/join/mgps/adapter/ForumTMemberAdapter$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;->c:Lcom/join/mgps/adapter/ForumTMemberAdapter;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumTMemberAdapter;->b(Lcom/join/mgps/adapter/ForumTMemberAdapter;)Lcom/join/mgps/adapter/ForumTMemberAdapter$c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget v0, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$b;->b:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/ForumTMemberAdapter$c;->a(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
