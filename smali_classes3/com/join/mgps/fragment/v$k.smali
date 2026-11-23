.class Lcom/join/mgps/fragment/v$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/v;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/v$k;->b:Lcom/join/mgps/fragment/v;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/fragment/v$k;->b:Lcom/join/mgps/fragment/v;

    .line 2
    .line 3
    const/16 v0, 0xc8

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/join/mgps/fragment/v;->a0(Lcom/join/mgps/fragment/v;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/v$k;->b:Lcom/join/mgps/fragment/v;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/fragment/v;->b0(Lcom/join/mgps/fragment/v;)Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
