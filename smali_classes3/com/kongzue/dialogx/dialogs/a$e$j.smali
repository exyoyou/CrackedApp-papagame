.class Lcom/kongzue/dialogx/dialogs/a$e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/a$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/a$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$j;->b:Lcom/kongzue/dialogx/dialogs/a$e;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$j;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    new-instance v1, Lcom/kongzue/dialogx/util/b;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 10
    .line 11
    invoke-direct {v1, v3, v2}, Lcom/kongzue/dialogx/util/b;-><init>(Lcom/kongzue/dialogx/dialogs/a;Lcom/kongzue/dialogx/dialogs/a$e;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/a$e;->c(Lcom/kongzue/dialogx/dialogs/a$e;Lcom/kongzue/dialogx/util/b;)Lcom/kongzue/dialogx/util/b;

    .line 15
    .line 16
    .line 17
    return-void
.end method
