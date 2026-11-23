.class public final synthetic Lcom/cloudplay/messagesdk/socket/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloudplay/messagesdk/socket/b/d;


# direct methods
.method public synthetic constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/g;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/g;->b:Lcom/cloudplay/messagesdk/socket/b/d;

    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->D(Lcom/cloudplay/messagesdk/socket/b/d;)V

    return-void
.end method
