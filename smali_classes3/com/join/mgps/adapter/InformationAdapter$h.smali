.class Lcom/join/mgps/adapter/InformationAdapter$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/InformationAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/InformationCommentBean$Sub;

.field final synthetic c:Lcom/join/mgps/adapter/InformationAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/InformationAdapter;Lcom/join/mgps/dto/InformationCommentBean$Sub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sub"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$h;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/InformationAdapter$h;->b:Lcom/join/mgps/dto/InformationCommentBean$Sub;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/InformationAdapter$h;->c:Lcom/join/mgps/adapter/InformationAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/InformationAdapter;->e:Lcom/join/mgps/adapter/InformationAdapter$l;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/InformationAdapter$h;->b:Lcom/join/mgps/dto/InformationCommentBean$Sub;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/InformationAdapter$l;->b(Lcom/join/mgps/dto/InformationCommentBean$Sub;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
