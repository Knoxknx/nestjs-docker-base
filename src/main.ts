import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
// import { ConfigService } from '@nestjs/config';
import { Logger } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const logger = new Logger('Bootstrap');
  await app.listen(3000, () => {
    logger.log('=====================================================');
    logger.log('Application has started successfully');
    logger.log('=====================================================');
  });
}
bootstrap();
