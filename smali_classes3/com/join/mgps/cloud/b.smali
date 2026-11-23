.class public final synthetic Lcom/join/mgps/cloud/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/listener/ConfigObserver;


# instance fields
.field public final synthetic a:Lcom/join/mgps/cloud/c;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/cloud/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/cloud/b;->a:Lcom/join/mgps/cloud/c;

    return-void
.end method


# virtual methods
.method public final notify(Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/b;->a:Lcom/join/mgps/cloud/c;

    invoke-static {v0, p1}, Lcom/join/mgps/cloud/c;->a(Lcom/join/mgps/cloud/c;Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    return-void
.end method
