.class Lcom/join/mgps/activity/PrivateDomainDefaultActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PrivateDomainDefaultActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PrivateDomainDefaultActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity$a;->b:Lcom/join/mgps/activity/PrivateDomainDefaultActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity$a;->b:Lcom/join/mgps/activity/PrivateDomainDefaultActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->access$000(Lcom/join/mgps/activity/PrivateDomainDefaultActivity;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
