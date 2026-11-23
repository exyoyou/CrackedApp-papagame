.class interface abstract Lcom/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/l$c;
    }
.end annotation

.annotation build Ldagger/hilt/migration/DisableInstallInCheck;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/l$c$a;)Lgb/b;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method
