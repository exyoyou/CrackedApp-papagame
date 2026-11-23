.class public final Lio/netty/handler/codec/smtp/DefaultSmtpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/smtp/SmtpRequest;


# instance fields
.field private final command:Lio/netty/handler/codec/smtp/SmtpCommand;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/smtp/SmtpCommand;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "command"

    .line 2
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/smtp/SmtpCommand;

    iput-object p1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/smtp/SmtpCommand;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/smtp/SmtpCommand;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "command"

    .line 9
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/smtp/SmtpCommand;

    iput-object p1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command:Lio/netty/handler/codec/smtp/SmtpCommand;

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "command"

    .line 5
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/smtp/SmtpCommand;

    iput-object p1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 6
    invoke-static {p2}, Lio/netty/handler/codec/smtp/SmtpUtils;->toUnmodifiableList([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 7
    invoke-static {p1}, Lio/netty/handler/codec/smtp/SmtpCommand;->valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpCommand;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;-><init>(Lio/netty/handler/codec/smtp/SmtpCommand;[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public command()Lio/netty/handler/codec/smtp/SmtpCommand;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    check-cast p1, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command()Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command()Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Lio/netty/handler/codec/smtp/SmtpCommand;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/codec/smtp/SmtpCommand;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public parameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DefaultSmtpRequest{command="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->command:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", parameters="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/netty/handler/codec/smtp/DefaultSmtpRequest;->parameters:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
