.class Lcom/kongzue/dialogx/dialogs/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/g;->K2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/g;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$b;->b:Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$b;->b:Lcom/kongzue/dialogx/dialogs/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/g$e;->a(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
