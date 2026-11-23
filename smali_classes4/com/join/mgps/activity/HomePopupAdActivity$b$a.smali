.class Lcom/join/mgps/activity/HomePopupAdActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdActivity$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/dto/AppBeanMain;

.field final synthetic d:Lcom/join/mgps/activity/HomePopupAdActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity$b;Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$context",
            "val$appBeanMain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->d:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->c:Lcom/join/mgps/dto/AppBeanMain;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->c:Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->a1(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity$b$a;->d:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdActivity$b;->b:Lcom/join/mgps/activity/HomePopupAdActivity;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
