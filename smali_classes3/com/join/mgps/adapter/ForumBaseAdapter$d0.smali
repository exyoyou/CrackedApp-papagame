.class Lcom/join/mgps/adapter/ForumBaseAdapter$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->b0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$positionx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->c:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:I

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->c:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->z()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->c:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->C()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->c:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->s()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->c:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lw6/f;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;->b:I

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lw6/f;->a(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
