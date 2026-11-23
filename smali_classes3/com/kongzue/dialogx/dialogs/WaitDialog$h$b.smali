.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$b;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$b;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->h(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
