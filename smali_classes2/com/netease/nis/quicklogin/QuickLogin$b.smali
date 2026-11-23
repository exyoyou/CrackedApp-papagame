.class Lcom/netease/nis/quicklogin/QuickLogin$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/nis/quicklogin/QuickLogin$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/QuickLogin;->getToken(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic b:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nis/quicklogin/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/a;)Lcom/netease/nis/quicklogin/a;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    .line 11
    .line 12
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->b(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/netease/nis/quicklogin/a;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
