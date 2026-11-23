.class public final synthetic Lcom/haima/hmcp/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/model/LocalKeyboardModel$4;

.field public final synthetic c:C


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/model/LocalKeyboardModel$4;C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/model/c;->b:Lcom/haima/hmcp/model/LocalKeyboardModel$4;

    iput-char p2, p0, Lcom/haima/hmcp/model/c;->c:C

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/c;->b:Lcom/haima/hmcp/model/LocalKeyboardModel$4;

    iget-char v1, p0, Lcom/haima/hmcp/model/c;->c:C

    invoke-static {v0, v1}, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->a(Lcom/haima/hmcp/model/LocalKeyboardModel$4;C)V

    return-void
.end method
