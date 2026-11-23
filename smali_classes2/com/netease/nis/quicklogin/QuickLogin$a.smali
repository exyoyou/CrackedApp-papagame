.class Lcom/netease/nis/quicklogin/QuickLogin$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/nis/quicklogin/QuickLogin$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/QuickLogin;->prefetchMobileNumber(Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "prefetchMobileNumber [startTime] "

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-wide v0, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->b(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/netease/nis/quicklogin/QuickLogin;->c(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/netease/nis/quicklogin/a;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
