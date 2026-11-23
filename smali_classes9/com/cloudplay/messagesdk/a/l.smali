.class public final synthetic Lcom/cloudplay/messagesdk/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/listener/ConfigObserver;


# instance fields
.field public final synthetic a:Lcom/cloudplay/messagesdk/listener/ConfigObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloudplay/messagesdk/a/l;->a:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    return-void
.end method


# virtual methods
.method public final notify(Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/l;->a:Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/a/j;->c(Lcom/cloudplay/messagesdk/listener/ConfigObserver;Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    return-void
.end method
